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
		 posicion = [izquierda,derecha,arriba,abajo].anyOne().proximaPosicion(posicion)
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
		//game.removeVisual(self)
		self.posicionAleatoria()
	}
}	