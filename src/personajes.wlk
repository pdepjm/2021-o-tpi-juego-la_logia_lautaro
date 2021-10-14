import wollok.game.*
import enmigos_monedas.*

object zombie inherits Visual(image = "character_zombie_walk1.png",position = new Position(x=2,y=2)) {
	//var posicion = game.at(2,2)
	var property puntos = 0
	var property vidas = 3
	const frases = ["Juguemos!","Esquiva a los enemigos!","Agarra todas las monedas!"]
	
	method puntos() = puntos
	
	//method position() = posicion
	
	//method posicion(unaPosicion) {
	    //posicion = unaPosicion	
	//}

	//method image() = "character_zombie_walk1.png"

	method moverPara(direccion){
		self.position(direccion.proximaPosicion(self.position(),self)) 
	}
	
	method sumarPuntos() {
		puntos += 10
		if(puntos==150){
			game.addVisual(puerta)
		}
//		else if(puntos==50){
//			const monedaSuper=new MonedaSuper()
//			game.addVisual(monedaSuper)
//		}
	}
	
	method recibirDanio() {
		if(vidas==1){
			game.stop()
			//game.boardGround("fondoPerdedor.jpg")
		}
		else{
			vidas --
		}	
	}
	
	method sumarVida(){
		vidas+=1
	}
	
	method estaVivo(){
		return vidas >= 1
	}
	
	method modificarVida(){
		vidas = (vidas - 1).max(0)
	}
	
	
	method hablar(){
		game.say(self,frases.anyOne())
	}
}

object vida inherits Visual(image = "heart.png" ,position = new Position(x=1,y=18)){
	//const posicion = game.at(1,18)
	
	//method position() {
		//return posicion
	//} 
	//method image() {
		//return "heart.png"   
    //}   
    
    method efecto(zombie){}
}

class Visual {
	var property image
	var property position = game.origin()
	
	//method position() = posicion
}