import wollok.game.*
object enemigo{
	const posicion = game.at(4, 8)
	method image() = "spikeMan_stand.png"
	method position() = posicion	
	}
	
	
object moneda{
	const posicion = game.at(7, 10)
	method image() = "coin_gold.png"
	method position() = posicion
}	