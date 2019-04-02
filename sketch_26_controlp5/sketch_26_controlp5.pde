//Controlp5

/*
ControlP5 nos permite hacer interfaces para poder manipular nuestros sketches en tiempo real.
En este caso, es un sketch sencillo donde la interfaz se ejecuta en una pantalla diferenciada, aunque
también podría estar en el sketch principal y mostrarse/esconderse con un atajo de teclado
*/

//importamos librería controlp5
import controlP5.*;
//creamos un nuevo objeto de tipo controlFrame
ControlFrame cf;

//Definimos las variables que vayamos a utilizar para ser modificadas desde la interfaz
float tamanho;
int on;


void settings() {
  size(1200, 800, P3D);
}

void setup() {
  //inicializamos el objeto controlframe, dándole un tamaño y un nombre 
  cf = new ControlFrame(this, 400, 200, "ControlFrame");
  noStroke();
}

void draw() {
  background(0);
  fill(255);
  //dibujamos el círculo sólo si el toogle de ON está pulsado y vale 1
  if(on == 1){
    //le damos al círculo el tamaño recogido por la variable tamanho, modificada por un slider
    ellipse(width/2, height/2, tamanho, tamanho);
  }
 //La definición de los controles está en la pestaña controls.
 //Las pestañas se utilizan para estructurar en clases o en funciones, y para tener el código más ordenado
 //se generan como otro .pde dentro de la carpeta del sketch, con el nombre que le demos
}

//Acciones de teclado
void keyPressed() {
  if (key == 's') {
    saveFrame("screenShot_###.png");
    println("screen shot taken");
  }  
}
