import wollok.game.*
import direcciones.*
import personajes.*
import nivel.*

class Enemigo inherits Visual(image = "most2.png"){
	method efecto(personaje_) {
		personaje_.recibirDanio()
	}
	
	method moverParaDireccionAlAzar() {
		self.position([izquierda,derecha,arriba,abajo].anyOne().proximaPosicion(self.position(),self))
	}
	
}
	
	
class Moneda inherits Visual(image = "coin_gold.png"){
	method efecto(personaje_) {
		personaje_.sumarPuntos()
		game.removeVisual(self)
		
	}
}

class MonedaSuper inherits Moneda(image = "super.png") {
	
	override method efecto(personaje_) {
		super(personaje_)
		//ACCION ESPECIAL
		personaje.sumarVida()	
	}
}

//Deja quieto a un enemigo
class Reloj inherits Visual(image="reloj.png") {
	method efecto(personaje_) {
		game.removeTickEvent("movimiento_enemigo")
		game.removeTickEvent("movimiento_enemigo")
		game.say(personaje,"Deje a dos enemigos quietos!!")
		game.removeVisual(self)
	}
}


class Puerta inherits Visual (image = "door.png" ,position = game.at(3,16)){
	const puntosAConseguir = 90
	const nivelSiguiente
	method efecto(personaje_){
		
		if(personaje.puntos()==puntosAConseguir){
			game.clear()
			nivelSiguiente.configuracionInicial()
		}
		else {
			game.say(personaje,"Me faltan monedas")
			//throw new DomainException(message="No se tienen los puntos suficientes")
		}
	}
}


