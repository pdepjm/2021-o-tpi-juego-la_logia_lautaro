import personajes.*
import enmigos_monedas.*
import direcciones.*
import wollok.game.*
import texto.*

object nivel0 {
	const boton1 = new Boton (nivelSiguiente=nivel1)
	
	method configuracionInicial(){
		game.boardGround("introjuego2.png")
	}
}//esto es horrrible

object nivel1 {
	const inicioDelJuego = new Visual(image = "introjuego2.png", position = game.at(1,1))
	const property moneda1=new Moneda()
	const moneda2=new Moneda()
	const moneda3=new Moneda()
	const moneda4=new Moneda()
	const moneda5=new Moneda()
	const moneda6=new Moneda()
	const moneda7=new Moneda()
	const moneda8=new Moneda()
	const property supermoneda = new MonedaSuper()
	const puerta1 = new Puerta(nivelSiguiente=nivel2)
	const property enemigo1=new Enemigo(position = game.at(4, 8))
	const enemigo2=new Enemigo()	
	const enemigo3=new Enemigo()	
	const enemigo4=new Enemigo()
	const enemigo5=new Enemigo()	
	const enemigo6=new Enemigo()	
	
	
	method pantallaInicio(){
		game.clear()
		game.title("zombie attack")
		game.height(20)
	    game.width(30)
		game.addVisual(inicioDelJuego)
		keyboard.a().onPressDo{self.configuracionInicial()}
	}
		
	method configuracionInicial(){
		game.boardGround("fondo.jpg")
		game.addVisual(puerta1)
		game.addVisual(textoPuntos)
		game.addVisual(textoVidas)
		game.addVisual(personaje)
		game.addVisual(vida)
		game.addVisual(supermoneda)
		self.configurarMonedas()
		self.configurarEnemigos()
		self.configurarTeclas()
		
		//POLIMORFISMO
		game.onCollideDo(personaje,{elemento=>elemento.efecto(personaje)})
	}
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ personaje.moverPara(izquierda) })
		keyboard.right().onPressDo({ personaje.moverPara(derecha) })
		keyboard.up().onPressDo({personaje.moverPara(arriba)})
		keyboard.down().onPressDo({personaje.moverPara(abajo)})
		keyboard.enter().onPressDo({ personaje.hablar()} )
		keyboard.e().onPressDo({game.stop()} )
		
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
		game.addVisual(moneda6)
		game.addVisual(moneda7)
		game.addVisual(moneda8)
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
		game.addVisual(enemigo4)
		game.addVisual(enemigo5)
		game.addVisual(enemigo6)
		game.onTick(500,"movimiento_enemigo",{enemigo1.moverParaDireccionAlAzar()})
		game.onTick(500,"movimiento_enemigo",{enemigo2.moverParaDireccionAlAzar()})
		game.onTick(500,"movimiento_enemigo",{enemigo3.moverParaDireccionAlAzar()})
		game.onTick(500,"movimiento_enemigo",{enemigo4.moverParaDireccionAlAzar()})
		game.onTick(500,"movimiento_enemigo",{enemigo5.moverParaDireccionAlAzar()})
		game.onTick(500,"movimiento_enemigo",{enemigo6.moverParaDireccionAlAzar()})
		//game.onCollideDo(enemigo1, {i => enemigo1.efecto(zombie)})
		//game.onCollideDo(enemigo2, {i => enemigo2.efecto(zombie)})
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
	const moneda11=new Moneda()
	const moneda12=new Moneda()
	const moneda13=new Moneda()
	const moneda14=new Moneda()
	const moneda15=new Moneda()
	
	const property supermoneda = new MonedaSuper()
	
	const puerta2 = new Puerta(puntosAConseguir=250,nivelSiguiente=nivel3)
	
	const reloj = new Reloj()
	
	const property enemigo1=new Enemigo(image = "monster_blue.png")
	const enemigo2=new Enemigo(image = "monster_blue.png")	
	const enemigo3=new Enemigo(image = "monster_green.png")	
	const enemigo4=new Enemigo(image = "monster_green.png")	
	const enemigo5=new Enemigo(image = "monster_lila3.png")
	const enemigo6=new Enemigo(image = "monster_red.png")	
	const enemigo7=new Enemigo(image = "monster_green.png")	
	const enemigo8=new Enemigo(image = "monster_green.png")	
	const enemigo9=new Enemigo(image = "monster_lila3.png")
	const enemigo10=new Enemigo(image = "monster_red.png")	
		
	method configuracionInicial(){
		game.boardGround("fondo2.jpg")
		game.addVisual(puerta2)
		game.addVisual(textoPuntos)
		game.addVisual(textoVidas)
		game.addVisual(personaje)
		game.addVisual(vida)
		
		game.addVisual(reloj)
		game.addVisual(supermoneda)
		
		self.configurarMonedas()
		self.configurarEnemigos()
		self.configurarTeclas()
		
		//POLIMORFISMO
		game.onCollideDo(personaje,{elemento=>elemento.efecto(personaje)})
	}
	
	method configurarTeclas(){
		keyboard.left().onPressDo({ personaje.moverPara(izquierda) })
		keyboard.right().onPressDo({ personaje.moverPara(derecha) })
		keyboard.up().onPressDo({personaje.moverPara(arriba)})
		keyboard.down().onPressDo({personaje.moverPara(abajo)})
		keyboard.enter().onPressDo({ personaje.hablar()} )
		keyboard.e().onPressDo({game.stop()} )
		
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
		game.addVisual(moneda11)
		game.addVisual(moneda12)
		game.addVisual(moneda13)
		game.addVisual(moneda14)
		game.addVisual(moneda15)
	}

	method configurarEnemigos() {
		game.addVisual(enemigo1)
		game.addVisual(enemigo2)
		game.addVisual(enemigo3)
		game.addVisual(enemigo4)
		game.addVisual(enemigo5)
		game.addVisual(enemigo6)
		game.addVisual(enemigo7)
		game.addVisual(enemigo8)
		game.addVisual(enemigo9)
		game.addVisual(enemigo10)
		game.onTick(400,"movimiento_enemigo",{enemigo1.moverParaDireccionAlAzar()})
		game.onTick(300,"movimiento_enemigo",{enemigo2.moverParaDireccionAlAzar()})
		game.onTick(400,"movimiento_enemigo",{enemigo3.moverParaDireccionAlAzar()})
		game.onTick(300,"movimiento_enemigo",{enemigo4.moverParaDireccionAlAzar()})
		game.onTick(400,"movimiento_enemigo",{enemigo5.moverParaDireccionAlAzar()})
		game.onTick(300,"movimiento_enemigo",{enemigo6.moverParaDireccionAlAzar()})
		game.onTick(400,"movimiento_enemigo",{enemigo7.moverParaDireccionAlAzar()})
		game.onTick(300,"movimiento_enemigo",{enemigo8.moverParaDireccionAlAzar()})
		game.onTick(400,"movimiento_enemigo",{enemigo9.moverParaDireccionAlAzar()})
		game.onTick(300,"movimiento_enemigo",{enemigo10.moverParaDireccionAlAzar()})
	}
	
	
}

object nivel3 {
	
	method configuracionInicial(){
		game.clear()
		const fondoGanador = new Visual (image = "fondoGanador2.jpg" ,position=game.at(0,0))
		game.addVisual(fondoGanador)
		keyboard.e().onPressDo({game.stop()} )
	}
	
}