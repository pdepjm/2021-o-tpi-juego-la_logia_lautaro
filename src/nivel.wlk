import personajes.*
import enmigos_monedas.*
import direcciones.*
import wollok.game.*

object nivel {
	
	method configuracionInicial(){
		game.addVisual(zombie)
		game.addVisual(enemigo)
		game.addVisual(moneda)
		self.configurarTeclas()
		self.acciones()
	}
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ zombie.moverPara(izquierda) })
		keyboard.right().onPressDo({ zombie.moverPara(derecha) })
		keyboard.up().onPressDo({zombie.moverPara(arriba)})
		keyboard.down().onPressDo({zombie.moverPara(abajo)})
		keyboard.enter().onPressDo({ zombie.hablar()} )
		
	}
	
	method acciones(){
		game.onCollideDo(zombie, {enemigo_ => zombie.tocaEnemigo(enemigo_)})
		game.onCollideDo(zombie, {moneda_ => zombie.tocaMoneda(moneda_)})
	}
	
}
