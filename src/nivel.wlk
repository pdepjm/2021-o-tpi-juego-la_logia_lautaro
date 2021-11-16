import personajes.*
import enmigos_monedas.*
import direcciones.*
import wollok.game.*
import texto.*

class Teclado{
	method configurarTeclas(){
		keyboard.left().onPressDo({ personaje.moverPara(izquierda) })
		keyboard.right().onPressDo({ personaje.moverPara(derecha) })
		keyboard.up().onPressDo({personaje.moverPara(arriba)})
		keyboard.down().onPressDo({personaje.moverPara(abajo)})
		keyboard.enter().onPressDo({ personaje.hablar()} )
		keyboard.e().onPressDo({game.stop()} )	
		keyboard.z().onPressDo({nivel1.configuracionInicial()} )
	}
}
object nivel0 {
	const fondoIntro = new Visual (image = "introjuego2Grande.jpg" ,position=game.at(0,0))
		
	method configuracionInicial(){
		game.boardGround("board1.jpg")
		game.addVisual(fondoIntro)
		keyboard.space().onPressDo({nivel1.configuracionInicial()} )
	}
}

object nivel1 inherits Teclado {
	const monedas = [new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda()]
	const property supermoneda = new MonedaSuper()
	const puerta1 = new Puerta(nivelSiguiente=nivel2)
	const enemigos = [new Enemigo(image = "most1.png"),new Enemigo(image = "most2.png")	,new Enemigo(image = "most3.png"),new Enemigo(image = "most3.png"),new Enemigo(image = "most1.png"),new Enemigo(image = "most2.png")]

		
	method configuracionInicial(){
		personaje.puntos(0)
		personaje.vidas(3)
		game.clear()
		game.addVisual(puerta1)
		game.addVisual(textoPuntos)
		game.addVisual(textoVidas)
		game.addVisual(personaje)
		game.addVisual(vida)
		game.addVisual(supermoneda)

		monedas.forEach({moneda=>game.addVisual(moneda)})
		enemigos.forEach({enemigo=>game.addVisual(enemigo)
			game.onTick(500,"movimiento_enemigo",{enemigo.moverParaDireccionAlAzar()})
		})
		
		self.configurarTeclas()
		
		//POLIMORFISMO
		game.onCollideDo(personaje,{elemento=>elemento.efecto(personaje)})
	}
	
	

	
	
}

object nivel2 inherits Teclado {
	
	const monedas = [new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda(),new Moneda()]
	
	const enemigos = [new Enemigo(image = "monster_red.png"),new Enemigo(image = "monster_lila3.png"),new Enemigo(image = "monster_green.png"),new Enemigo(image = "monster_green.png"),new Enemigo(image = "monster_red.png"),new Enemigo(image = "monster_lila3.png"),new Enemigo(image = "monster_green.png"),new Enemigo(image = "monster_green.png"),new Enemigo(image = "monster_blue.png"),new Enemigo(image = "monster_blue.png")	]
	const property supermoneda = new MonedaSuper()
	
	const puerta2 = new Puerta(puntosAConseguir=250,nivelSiguiente=nivel3)
	
	const reloj = new Reloj()
	

		
	method configuracionInicial(){
		game.addVisual(puerta2)
		game.addVisual(textoPuntos)
		game.addVisual(textoVidas)
		game.addVisual(personaje)
		game.addVisual(vida)
		
		game.addVisual(reloj)
		game.addVisual(supermoneda)
		
		self.configurarTeclas()
		
		monedas.forEach({moneda=>game.addVisual(moneda)})
		enemigos.forEach({enemigo=>game.addVisual(enemigo)
			game.onTick(350,"movimiento_enemigo",{enemigo.moverParaDireccionAlAzar()})
		})
		
		//POLIMORFISMO
		game.onCollideDo(personaje,{elemento=>elemento.efecto(personaje)})
	}
	
	
	
}

object nivel3 {
	
	method configuracionInicial(){
		game.clear()
		const fondoGanador = new Visual (image = "winner.jpg" ,position=game.at(0,0))
		game.addVisual(fondoGanador)
		keyboard.e().onPressDo({game.stop()} )
		keyboard.z().onPressDo({nivel1.configuracionInicial()} )
	}
	
}

/*object fondoPerdedor {
	
	method configuracionInicial(){
		game.clear()
		const fondoPerdedor = new Visual (image="game_Over1.jpg",position=game.at(0,0))	
		game.addVisual(fondoPerdedor)
		keyboard.e().onPressDo({game.stop()} )
		keyboard.z().onPressDo({nivel1.configuracionInicial()} )
	}
	
}*/