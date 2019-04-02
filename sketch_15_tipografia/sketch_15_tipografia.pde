/*
Para utilizar tipografía, si queremos usar una diferente a la dada por el sistema, debemos crearla, existen dos métodos:
*/

PFont font;
PFont font2;

void setup(){
  size(500, 500);
  background(0);
  /*
  Creando un archivo .vlw a partir de la tipografía, en el Menú Herramientas - Crear Fuente
  Generará este archivo que se guardará por defecto en la carpeta data del sketch, donde se alojan los archivos externos
  */
  font = loadFont("fuente.vlw");
  /*
  Guardando directamente el archivo .ttf de tipografía dentro de la carpeta, aquí tenemos que indicar el tamaño
  */
  font2 = createFont("Stencilia-A.ttf", 48);
  textAlign(CENTER);

}

void draw(){
  textFont(font);
  text("Hello World 1", width/2, height/3);
  
  textFont(font2);
  text("Hello World 2", width/2, height-height/3);
}
