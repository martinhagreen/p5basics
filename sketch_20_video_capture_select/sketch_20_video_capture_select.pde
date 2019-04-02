/*
A pesar de que vayamos a utilizar simplemente la cámara interna o webcam de nuestro ordenador, podemos escoger
la "cámara" que queremos utilizar, ya que nos aparecerá una lista donde esa cámara estara multiplicada,
en distintas resoluciones y fps, para adecuarlo a las necesidades del sketch
*/

import processing.video.*;
Capture cam;

void setup() {
  size(960, 540);
  //Creamos un array para almacenar la lista de cámaras disponibles
  String[] camaras = Capture.list();

  if (camaras == null) {
    println("Error al obtener la lista de cámaras disponibles, probamos con la cámara por defecto...");
    cam = new Capture(this);
  } if (camaras.length == 0) {
    //si no hay ninguna cámara disponible
    println("No hay cámaras disponibles para captura");
    //cerramos el sketch
    exit();
  } else {
    //En caso de haber cámaras, las imprimimos en consola
    println("Cámaras disponibles:");
    printArray(camaras);
    //Al tratarse de un Array; una lista, el índice empieza por 0
    cam = new Capture(this, camaras[0]);
    //O también podemos poner el nombre entre comillas, ya que es un String
    //cam = new Capture(this, 640, 480, "Built-in iSight", 30);
    cam.start();
  }
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  pushMatrix();
    scale(-1, 1);
    image(cam, -width, 0, width, height);
  popMatrix();
  
  /*
  set() es un método alternativo a usar image(), más rápido cuando se usa la imagen de la webcam 
  sin ningún tipo de transformación tipo scale() o tint() 
  */
  //set(0, 0, cam);
}
