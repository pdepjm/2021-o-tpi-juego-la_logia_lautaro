import wollok.game.*
import enmigos_monedas.*

object zombie {
	var posicion = game.at(2,2)
	var property puntos = 0
	var property vidas = 3
	
	method puntos() = puntos
	
	method position() {
		return posicion
	} 
	
	method posicion(unaPosicion) {
			posicion = unaPosicion	
	}

	method image() = "character_zombie_walk1.png"

	method moverPara(direccion) {
		posicion = direccion.proximaPosicion(posicion) 
	}
	
	method sumarPuntos() {
		puntos += 10
		if(puntos==150){
			game.addVisual(puerta)
		}
	}
	
	method recibirDanio() {
		if(vidas==1){
			game.stop()
		}
		else{
			vidas --
		}	
	}
	
	method estaVivo(){
		return vidas >= 1
	}
	
	method modificarVida(){
		vidas = (vidas - 1).max(0)
	}
	
	method frase(){
		return "juguemos"
	}
	
	method hablar(){
		game.say(self, self.frase())
	}
}

object vida{
	const posicion = game.at(1,18)
	
	method position() {
		return posicion
	} 
	method image() {
		return "heart.png"   
    }   
}




