import processing.video.*;

//proporción de las celdas
int videoScale = 8;

//Variables de número de columas y filas 
int columnas, filas;
Capture video;

void setup() {
  size(640, 480);
  smooth();
  //Damos valor a las columnas y filas para ser proporcionales con el tamaño de la ventana
  columnas = width/videoScale;
  filas = height/videoScale;
  video = new Capture(this, columnas, filas, 30);
  video.start();
}

void draw() {
  background(0);
  
  if (video.available()) {
    video.read();
  }
  video.loadPixels();
  
  //Analizamos el vídeo, primero de modo vertical
  for (int i = 0; i < columnas; i++) {
    // y de modo vertical
    for (int j = 0; j < filas; j++) {
      
      // Where are we, pixel-wise?
      int x = i*videoScale;
      int y = j*videoScale;
     
      //Guardamos el color de cada pixel leído en un array
      color c = video.pixels[i + j*video.width];
      //de modo alternativo, podríamos también analizar el brillo de cada pixel,
      //y aplicarlo al tamaño de los cuadrados, por ejemplo:
      /*
      float sz = (brightness(c)/255.0)*videoScale; 
      fill(c);
      noStroke();
      rect(x + videoScale/2,y + videoScale/2,sz,sz);
      */
      
      //pasamos ese valor como relleno de los cuadrados creados a partir del pixel
      fill(c);
      noStroke();
      rect(x,y,videoScale,videoScale);
     
    }
    }
}
