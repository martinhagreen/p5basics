/*
En Processing, una de las librerías más utilizadas con sonido es Minim.
Se puede descargar del contribution manager.
En este ejemplo, vamos a analizar el volumen captado por la entrada de línea del ordenador
*/

import ddf.minim.*;
import ddf.minim.signals.*;

//Instanciamos un objeto de tipo minim
Minim minim;
//Y otro de tipo audioInput, ya que usaremos la entrada de audio
AudioInput in;

void setup(){
  size(1200,800);
  minim = new Minim(this);
  //indicamos que in lee información de la entrada de línea
  in = minim.getLineIn();
  rectMode(CORNERS);
}

void draw(){
  background(0);
  fill(255);
  //dibujamos el nivel actual de los buffers (izda y derecha)
  //level() devuelve un valor entre 0 y 1 (normalizado), asi que lo escalamos
  rect(0, height, width/2, height - in.left.level()*1000);
  rect(width/2, height, width, height - in.right.level()*1000);
}

void stop(){
  /*
  Siempre hay que cerrar la entrada de audio y minim antes de cerrar
  */
  in.close();
  minim.stop();
  super.stop();
}
