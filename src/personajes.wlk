import wollok.game.*

object zombie {
	var posicion = game.at(2,2)
	var property puntos = 0
	var property vidas = 3
	
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
	}
	
	method recibirDanio() {
		vidas = (vidas - 1).max(0)
	}
	
	
	method frase(){
		return "juguemos"
	}
	
	method hablar(){
		game.say(self, self.frase())
	}
}