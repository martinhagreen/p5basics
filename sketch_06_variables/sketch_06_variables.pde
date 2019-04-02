/*
Una variable es un tipo de dato de un formato específico que guarda información en el
Por ejemplo, si quisiésemos que los círculos que aparecen en el canvas sean de distinto tamaño, si escribimos:
ellipse(random(width), random(height), random(10, 100), random(10, 100));
obtendríamos la mayor parte del tiempo elipses, ya que por la aleatoriedad las posibilidades de que el ancho y el alto coincidan son mínimas

Para eso, debemos crear una variable donde guardamos ese número aleatorio y lo aplicamos al ancho y al alto de la figura
Para programas más complejos, se recomienda el uso de variables ya que por ejemplo, tenemos un valor que se repite o se utiliza en 
varios lugares, podemos hacer cambios y localizar esos datos de manera más ágil

*/

/*
Las variables deben ser creadas e inicializadas siempre, indicando su tipo

int = número entero
float = número decimal
String = cadena de texto
boolean = booleano, sólo puede ser verdadero o falso

int myInteger = 8;
float myFloat = 8.5;
bool myBoolean = true;
string myString = “This is a text”;
*/

float tamanho;

void setup(){
  size(500, 500);
  background(0);
}


void draw(){
  //cada frame, nuestra variable tamanho se recalcula
  tamanho = random(10, 100);
  //usando println(), podemos ver en la consola inferior el valor de la variable
  println(tamanho);
  
  noStroke();
  fill(random(255), random(255), random(255));
  //lo aplicamos al tamaño de nuestro circulo, tanto al ancho como al alto
  ellipse(random(width), random(height), tamanho, tamanho);
  
  fill(0, 10);
  rect(0, 0, width, height);
}
