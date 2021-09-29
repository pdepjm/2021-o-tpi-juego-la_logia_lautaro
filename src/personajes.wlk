import wollok.game.*

object zombie {
	var posicion = game.at(2,2)
	var property puntos = 0
	var vidas = 3
	
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
	
	//method puntos() = puntos
	
	method sumarPunto() {
		puntos += 10
	}
	
	method tocaEnemigo(enemigo){
		vidas = (vidas - 1). min(0)
	}
	
	method tocaMoneda(moneda){
		self.sumarPunto()
	}
}