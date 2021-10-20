import personajes.*
import enmigos_monedas.*
import direcciones.*
import wollok.game.*
import texto.*


object nivel1 {
	
	const property moneda1=new Moneda()
	const moneda2=new Moneda()
	const moneda3=new Moneda()
	const moneda4=new Moneda()
	const moneda5=new Moneda()
	const property supermoneda = new MonedaSuper()
	const puerta1 = new Puerta()
	const property enemigo1=new Enemigo(position = game.at(4, 8))
	const enemigo2=new Enemigo(position = game.at(15, 5))	
	const enemigo3=new Enemigo(position = game.at(10, 15))	
		
	method configuracionInicial(){
		game.boardGround("fondo.jpg")
		//game.addVisual(fondo)
		game.addVisual(textoPuntos)
		game.addVisual(textoVidas)
		game.addVisual(zombie)
		game.addVisual(vida)
		game.addVisual(supermoneda)
		self.configurarMonedas()
		self.configurarEnemigos()
		self.configurarTeclas()
		self.configurarPuerta()
		
		//POLIMORFISMO
		game.onCollideDo(zombie,{elemento=>elemento.efecto(zombie,nivel2)})
	}
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ zombie.moverPara(izquierda) })
		keyboard.right().onPressDo({ zombie.moverPara(derecha) })
		keyboard.up().onPressDo({zombie.moverPara(arriba)})
		keyboard.down().onPressDo({zombie.moverPara(abajo)})
		keyboard.enter().onPressDo({ zombie.hablar()} )
		
	}
	
	//method acciones(){ 
	//	game.onCollideDo(enemigo, {i => enemigo.efecto(zombie)})
	//	game.onCollideDo(moneda1, {i => moneda1.efecto(zombie)})
	//	game.onCollideDo(moneda2, {i => moneda2.efecto(zombie)})
	//	game.onCollideDo(moneda3, {i => moneda3.efecto(zombie)})
	//	game.onCollideDo(moneda4, {i => moneda4.efecto(zombie)})
	//	game.onCollideDo(moneda5, {i => moneda5.efecto(zombie)})
	//}
	
	method configurarMonedas() {
		game.addVisual(moneda1)
		game.addVisual(moneda2)
		game.addVisual(moneda3)
		game.addVisual(moneda4)
		game.addVisual(moneda5)
		//game.onCollideDo(moneda1, {i => moneda1.efecto(zombie)})
		//game.onCollideDo(moneda2, {i => moneda2.efecto(zombie)})
		//game.onCollideDo(moneda3, {i => moneda3.efecto(zombie)})
		//game.onCollideDo(moneda4, {i => moneda4.efecto(zombie)})
		//game.onCollideDo(moneda5, {i => moneda5.efecto(zombie)})
	}

	method configurarEnemigos() {
		game.addVisual(enemigo1)
		game.addVisual(enemigo2)
		game.addVisual(enemigo3)
		game.onTick(500,"movimiento_enemigo",{enemigo1.moverParaDireccionAlAzar()})
		game.onTick(500,"movimiento_enemigo",{enemigo2.moverParaDireccionAlAzar()})
		game.onTick(500,"movimiento_enemigo",{enemigo3.moverParaDireccionAlAzar()})
		//game.onCollideDo(enemigo1, {i => enemigo1.efecto(zombie)})
		//game.onCollideDo(enemigo2, {i => enemigo2.efecto(zombie)})
	}
	
	
	method configurarPuerta() {
		game.addVisual(puerta1)
		
	}
}

object nivel2 {
	
	const property moneda1=new Moneda()
	const moneda2=new Moneda()
	const moneda3=new Moneda()
	const moneda4=new Moneda()
	const moneda5=new Moneda()
	const moneda6=new Moneda()
	const moneda7=new Moneda()
	const moneda8=new Moneda()
	const moneda9=new Moneda()
	const moneda10=new Moneda()
	
	const property supermoneda = new MonedaSuper()
	
	const puerta2 = new Puerta(puntosAConseguir=170)
	
	const property enemigo1=new Enemigo(image = "monster_blue.png")
	const enemigo2=new Enemigo(image = "monster_blue.png")	
	const enemigo3=new Enemigo(image = "monster_green.png")	
	const enemigo4=new Enemigo(image = "monster_green.png")	
	const enemigo5=new Enemigo(image = "monster_lila3.png")
	const enemigo6=new Enemigo(image = "monster_red.png")	
		
	method configuracionInicial(){
		game.boardGround("fondo2.jpg")
		//game.addVisual(fondo)
		game.addVisual(textoPuntos)
		game.addVisual(textoVidas)
		game.addVisual(zombie)
		game.addVisual(vida)
		game.addVisual(supermoneda)
		self.configurarMonedas()
		self.configurarEnemigos()
		self.configurarTeclas()
		self.configurarPuerta()
		
		//POLIMORFISMO
		game.onCollideDo(zombie,{elemento=>elemento.efecto(zombie,nivel3)})
	}
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ zombie.moverPara(izquierda) })
		keyboard.right().onPressDo({ zombie.moverPara(derecha) })
		keyboard.up().onPressDo({zombie.moverPara(arriba)})
		keyboard.down().onPressDo({zombie.moverPara(abajo)})
		keyboard.enter().onPressDo({ zombie.hablar()} )
		
	}
	
	
	method configurarMonedas() {
		game.addVisual(moneda1)
		game.addVisual(moneda2)
		game.addVisual(moneda3)
		game.addVisual(moneda4)
		game.addVisual(moneda5)
		game.addVisual(moneda6)
		game.addVisual(moneda7)
		game.addVisual(moneda8)
		game.addVisual(moneda9)
		game.addVisual(moneda10)
	}

	method configurarEnemigos() {
		game.addVisual(enemigo1)
		game.addVisual(enemigo2)
		game.addVisual(enemigo3)
		game.addVisual(enemigo4)
		game.addVisual(enemigo5)
		game.addVisual(enemigo6)
		game.onTick(500,"movimiento_enemigo",{enemigo1.moverParaDireccionAlAzar()})
		game.onTick(500,"movimiento_enemigo",{enemigo2.moverParaDireccionAlAzar()})
		game.onTick(500,"movimiento_enemigo",{enemigo3.moverParaDireccionAlAzar()})
		game.onTick(500,"movimiento_enemigo",{enemigo4.moverParaDireccionAlAzar()})
		game.onTick(500,"movimiento_enemigo",{enemigo5.moverParaDireccionAlAzar()})
		game.onTick(500,"movimiento_enemigo",{enemigo6.moverParaDireccionAlAzar()})
	}
	
	
	method configurarPuerta() {
		game.addVisual(puerta2)
		
	}
}

object nivel3 {
	
	method configuracionInicial(){
		game.stop()
	}
	
}