import personajes.*
import enmigos_monedas.*
import direcciones.*
import wollok.game.*

object nivel {
	
	method configuracionInicial(){
		game.addVisual(zombie)
		game.addVisual(enemigo)
		self.configurarTeclas()
	}
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ zombie.moverPara(izquierda) })
		keyboard.right().onPressDo({ zombie.moverPara(derecha) })
		keyboard.up().onPressDo({zombie.moverPara(arriba)})
		keyboard.down().onPressDo({zombie.moverPara(abajo)})
		
	}
	
	method acciones(){
		game.onCollideDo(zombie, {enemigo_ => zombie.tocaEnemigo(enemigo_)})
		game.onCollideDo(zombie, {moneda_=> zombie.tocaEnemigo(moneda_)})
	}
	
}
