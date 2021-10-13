import wollok.game.*
import direcciones.*
import personajes.*
import nivel.*

class Enemigo{
	var posicion = game.at(4, 8)
	method image() = "spikeMan_stand.png"
	method position() = posicion
		
	method efecto(i) {
		i.recibirDanio()
	}
	
	method moverParaDireccionAlAzar() {
		posicion = [izquierda,derecha,arriba,abajo].anyOne().proximaPosicion(posicion,self)
	}
	
}
	
	
class Moneda{
	var posicion
	method image() = "coin_gold.png"
	method position() = posicion
	
	//method posicionAleatoria(){
		//posicion = game.at (1.randomUpTo(20),1.randomUpTo(20))
	//}
	method efecto(i) {
		i.sumarPuntos()
		game.removeVisual(self)
	}
}

object monedaSuper inherits Moneda(posicion = game.at(10,10)) {
	override method image() = "super.png"
	
	override method efecto(i) {
		super(i)
		//ACCION ESPECIAL
		i.sumarVida()	
	}
}

object puerta {
	const posicion = game.at(3,16)
	method position() = posicion
	method image() = "puerta2.png"
	
	method efecto(i){
		//Hacer que algo pase cuando gane
		if(i.puntos()==60){
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