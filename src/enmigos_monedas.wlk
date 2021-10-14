import wollok.game.*
import direcciones.*
import personajes.*
import nivel.*

class Enemigo inherits Visual(image = "spikeMan_stand.png",position = new Position(x=4,y=8)){
	//var posicion = game.at(4, 8)
	//method image() = "spikeMan_stand.png"
	//method position() = posicion
		
	method efecto(personaje) {
		personaje.recibirDanio()
	}
	
	method moverParaDireccionAlAzar() {
		self.position([izquierda,derecha,arriba,abajo].anyOne().proximaPosicion(self.position(),self))
	}
	
}
	
	
class Moneda inherits Visual(image = "coin_gold.png" ,position = new Position()){
	//var posicion
	//method image() = "coin_gold.png"
	//method position() = posicion
	
	//method posicionAleatoria(){
		//posicion = game.at (1.randomUpTo(20),1.randomUpTo(20))
	//}
	method efecto(personaje) {
		personaje.sumarPuntos()
		game.removeVisual(self)
	}
}

object monedaSuper inherits Moneda(image = "super.png" ,position = game.at(10,10)) {
	//override method image() = "super.png"
	
	override method efecto(i) {
		super(i)
		//ACCION ESPECIAL
		i.sumarVida()	
	}
}

object puerta inherits Visual (image = "puerta2.png" ,position = game.at(3,16)){
	//const posicion = game.at(3,16)
	//method position() = posicion
	//method image() = "puerta2.png"
	
	method efecto(personaje){
		//Hacer que algo pase cuando gane
		if(personaje.puntos()==60){
			game.boardGround("fondoGanador.jpg")
			game.stop()}
	}
}

/*object fondo {
	const posicion = game.center()
	var fondo="fondoGanador.jpg"
	method position() = posicion
	method image() = fondo
	
	method modificarFondo(nuevoFondo) {
		fondo=nuevoFondo
	}
}*/