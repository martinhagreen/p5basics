/*
Para utilizar vídeo, sea leer un archivo o abrir un dispositivo externo (webcam), necesitamos utilizar una librería específica de vídeo
Para ello, debemos descargarla desde el menú Sketch - Bibliotecas - Importar bibliotecas ; y allí buscamos Video
Una vez descargada nos aparecerá en esa lista del menú, al hacer click, aparecerá la linea de import que vemos a continuación
*/

import processing.video.*;
//Creamos un objeto de tipo movie llamado myMovie
Movie myMovie;

void setup() {
  size(500,500);
  background(0);
  //hay que leer el archivo de video
  myMovie = new Movie(this, "station.mov");
  //con .loop indicamos que la película se reproducirá en bucle
  myMovie.loop();
}

//Esta funcion lee los frames del archivo 
void movieEvent(Movie myMovie) {
  myMovie.read();
}

void draw() {
  //Las películas se comportan igual que una imagen
  imageMode(CENTER);
  image(myMovie, width/2, height/2);
}
