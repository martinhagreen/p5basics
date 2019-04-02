/*
/*
En Processing, una de las librerías más utilizadas con sonido es Minim.
Se puede descargar del contribution manager.
En este ejemplo, vamos a cargar un archivo de audio y reproducirlo
*/

import ddf.minim.*;
import ddf.minim.effects.*;
//Instanciamos un objeto de tipo minim
Minim minim;
//Y otro de tipo audioPlayer
AudioPlayer groove;

void setup(){
  size(512, 200, P3D);

  minim = new Minim(this);
  //cargamos el archivo (mp3, wav...) que debe estar en la carpeta data del sketch
  groove = minim.loadFile("groove.mp3", 2048);
}

void draw(){
  background(0);
}

void keyPressed(){
  //si pulsamos la tecla l, iniciamos el loop
  //Si quisiesemos que se activase siempre, llamaríamos a groove.loop() desde setup()
  if ( key == 'l'){
    groove.loop();
  }
  
}
