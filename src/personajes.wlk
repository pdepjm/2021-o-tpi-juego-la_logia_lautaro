import wollok.game.*
import enmigos_monedas.*

object personaje inherits Visual(image = "character_zombie_walk1.png",position = new Position(x=2,y=2)) {
	//var posicion = game.at(2,2)
	var puntos = 0
	var property vidas = 3
	const frases = ["Juguemos!","Esquiva a los enemigos!","Agarra todas las monedas!"]
	
	method puntos() = puntos

	method moverPara(direccion){
		self.position(direccion.proximaPosicion(self.position(),self)) 
	}
	
	method sumarPuntos() {
		puntos += 10
	}
	
	method recibirDanio() {
		if(vidas==1){
			const fondoPerdedor = new Visual (image="gameOver.jpg",position=game.at(0,0))	
			game.addVisual(fondoPerdedor)
		}
		else{
			vidas --
		}	
	}
	
	method sumarVida(){
		vidas+=1
	}
	
	method estaVivo(){
		return vidas >= 1
	}
	
	method modificarVida(){
		vidas = (vidas - 1).max(0)
	}
	
	
	method hablar(){
		game.say(self,frases.anyOne())
	}
}

object vida inherits Visual(image = "heart.png" ,position = new Position(x=1,y=18)){
    method efecto(zombie){}
}

class Visual {
	var property image
	
	//Posicion aleatoria
	const x = 0.randomUpTo(27.truncate(0))
    const y = 1.randomUpTo(17.truncate(1))
	var property position = game.at(x,y)
	
}