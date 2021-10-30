object izquierda {
	method proximaPosicion(posicionActual,objeto) =
		if(objeto.position().x()!=0)
		{
		posicionActual.left(1) 
		}
		else {
		posicionActual.left(0) 
		}	
}

object derecha {
	method proximaPosicion(posicionActual,objeto) =
		if(objeto.position().x()!=28)
		{
		posicionActual.right(1) 
		}
		else {
		posicionActual.right(0) 
		}
	
}

object arriba{
	method proximaPosicion(posicionActual,objeto) =
		if(objeto.position().y()!=18)
		{
		posicionActual.up(1) 
		}
		else {
		posicionActual.up(0) 
		}
}

object abajo{
	method proximaPosicion(posicionActual,objeto) =
		if(objeto.position().y()!=0)
		{
		posicionActual.down(1) 
		}
		else {
		posicionActual.down(0) 
		}
}

//object movimiento{
	//method moverPara(direccion, personaje){
		//personaje.position(direccion.proximaPosicion(personaje.position(), personaje))
		
//	}
//}
