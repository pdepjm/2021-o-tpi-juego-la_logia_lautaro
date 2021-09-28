import wollok.game.*

object zombie {
	var posicion = game.at(2,2)
	var puntos = 0
	
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
	
	method puntos() = puntos
	
	method sumarPunto() {
		puntos += 10
	}
}