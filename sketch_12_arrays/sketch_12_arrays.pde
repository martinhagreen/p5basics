/*
 Un array es un contenedor de datos del mismo tipo al que podemos acceder
 Siempre se representan con corchetes [] y hay que indicar su tipo de variable
*/

String[] planets = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"}; 
int indice;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  fill(255);
  textSize(40);
  textAlign(CENTER);
  //dibujamos en pantalla el texto, ya que es un String, usando la fuente por defecto del sistema 
  text(planets[indice], width/2, height/2);
}

/*
 Cada vez que soltamos una tecla, se busca un nuevo valor de índice, que buscará un numero aleatorio
 entre 0 y el tamaño del array, usando el método length
 El primer valor de un array siempre empieza en 0
*/

void keyReleased() {
  indice = int(random(planets.length));
  println(planets[indice]);
}
