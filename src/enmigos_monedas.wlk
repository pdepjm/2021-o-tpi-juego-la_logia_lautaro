import wollok.game.*
import direcciones.*
import nivel.*

object enemigo{
	const posicion = game.at(4, 8)
	method image() = "spikeMan_stand.png"
	method position() = posicion
		
	method efecto(zombie) {
		zombie.recibirDanio()
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