import wollok.game.*
import direcciones.*
import nivel.*

class Enemigo{
	var posicion = game.at(4, 8)
	method image() = "spikeMan_stand.png"
	method position() = posicion
		
	method efecto(zombie) {
		zombie.recibirDanio()
	}
	
	method moverParaDireccionAlAzar() {
		posicion = [izquierda,derecha,arriba,abajo].anyOne().proximaPosicion(posicion,self)
	}
	
}
	
	
class Moneda{
	var posicion = game.at(7, 10)
	method image() = "coin_gold.png"
	method position() = posicion
	
	method posicionAleatoria(){
		posicion = game.at (1.randomUpTo(20),1.randomUpTo(20))
	}
	method efecto(zombie) {
		zombie.sumarPuntos()
		game.removeVisual(self)
	}
}

class MonedaSuper inherits Moneda {
	override method image() = "super.png"
	
	override method efecto(zombie) {
		super(zombie)
		//ACCION ESPECIAL
		zombie.sumarVida()	
	}
}

object puerta {
	const posicion = game.at(3,16)
	method position() = posicion
	method image() = "puerta2.png"
	
	method efecto(zombie){
		//Hacer que algo pase cuando gane
		//game.boardGround("fondoGanador.jpg")
		game.stop()
	}
}

object fondo {
	const posicion = game.center()
	var fondo="fondoGanador.jpg"
	method position() = posicion
	method image() = fondo
	
	method modificarFondo(nuevoFondo) {
		fondo=nuevoFondo
	}
}	