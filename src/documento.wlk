/*Polimorfismo: ¿Cuál es el mensaje polimórfico? ¿Qué objetos lo implementan? ¿Qué objeto se aprovecha de ello?
El mensaje polimórfico es el de la linea de "game.onCollideDo(zombie,{elemento=>elemento.efecto(zombie)})
Los objetos que lo implementan son la monedaSuper, y las instancias de las Clases de Monedas y Enemigos.
El objeto que se aprovecha de ello es el game

Colecciones: ¿Qué operaciones de colecciones se utilizan? ¿Usaron mensajes con y sin efecto? ¿Para qué?
Se usan en el movimiento al azar de los enemigos method moverParaDireccionAlAzar() {
        posicion = [izquierda,derecha,arriba,abajo].anyOne().proximaPosicion(posicion,self)}
y también en el atributo frases de zombie que luego se utiliza para que pueda decir una frase al azar mediante el metodo hablar.

Clases: ¿Usan clases? ¿Por qué? ¿Dónde o cuándo se instancian los objetos?
Se usan clases en Monedas y Enemigos para poder tener varias instancias de estos en el juego y que sigan teniendo el mismo comportamiento.
Se instancian en el objeto nivel mediante la declaración de sus atributos que hacen referencia a estas instancias.

Herencia: ¿Entre quiénes y por qué? ¿Qué comportamiento es común y cuál distinto?
Se aplica herencia en el objeto monedaSuper que hereda atributos y comportamientos en común. El comportamiento distinto es en el efecto ya que agrega una vida y 
* el comportamiento común es sumarle los puntos.
Composición: ¿Qué objetos interactúan? ¿Dónde se delega? ¿Por qué no herencia?
 */
