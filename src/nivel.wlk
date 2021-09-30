import personajes.*
import enmigos_monedas.*
import direcciones.*
import wollok.game.*
import texto.*

object nivel {
	
	const moneda1=new Moneda(posicion = game.at(4,4))
	const moneda2=new Moneda(posicion = game.at(6,15))
	const moneda3=new Moneda(posicion = game.at(2,7))
	const moneda4=new Moneda(posicion = game.at(9,20))
	const moneda5=new Moneda(posicion = game.at(14,12))
		
	method configuracionInicial(){
		game.addVisual(textoPuntos)
		game.addVisual(textoVidas)
		game.addVisual(zombie)
		game.addVisual(enemigo)
		self.configurarMonedas()
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
		game.onCollideDo(enemigo, {i => enemigo.efecto(zombie)})
		game.onCollideDo(moneda1, {i => moneda1.efecto(zombie)})
		game.onCollideDo(moneda2, {i => moneda2.efecto(zombie)})
		game.onCollideDo(moneda3, {i => moneda3.efecto(zombie)})
		game.onCollideDo(moneda4, {i => moneda4.efecto(zombie)})
		game.onCollideDo(moneda5, {i => moneda5.efecto(zombie)})
	}
	
	method configurarMonedas() {
		game.addVisual(moneda1)
		game.addVisual(moneda2)
		game.addVisual(moneda3)
		game.addVisual(moneda4)
		game.addVisual(moneda5)
	}
	
}
