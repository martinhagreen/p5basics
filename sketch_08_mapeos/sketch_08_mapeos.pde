/*
El método map equivale a una "regla de tres"
Lo utilizaremos casi todo el tiempo que estemos trabajando con inputs y outputs, para ajustar los rangos
Los inputs pueden ser variados, desde la posición del mouse, el valor de un sensor, el volumen del micrófono...

Funciona siempre del mismo modo:

map(elementoquequeremosmapear, minimo de origen, maximo de origen, minimo de destino, maximo de destino)
*/

float rota;
float rojo;
float tamanho;

void setup(){
  size(500, 500);
  rectMode(CENTER);
}

void draw(){
   //mapeamos la posición en X del mouse para modificar el canal del rojo
   //sabemos que mouseX como mínimo es 0 y como máximo es el tamaño del canvas
   //y que un canal de color es mínimo 0 y máximo 255
   //son ejemplos con rangos absolutos, no tiene porque ser siempre así
   rojo = map(mouseX,0, width, 0, 255);
   //y con la posición en Y modificaremos el tamaño del rectángulo
   //sólo necesitamos un valor por mantener la proporción y tener un cuadrado
   tamanho = map(mouseY, 0, height, 10, 300);
   
   background(0);
   fill(rojo, 0, 100);
  
   pushMatrix();
     translate(width/2, height/2);
     rotate(rota);
     rect(0,0, tamanho, tamanho);
   popMatrix();
  
   //si sumamos en cada paso del draw, a rota una cantidad, estamos creando un incremento de la variable
   rota = rota + 0.1;
 
}
