/*
En Processing, las imágenes se guardan en un tipo de variable llamado PImage
Podemos utilizar imágenes que están en el disco duro, dentro de la carpeta data;
o incluso acceder a una imagen por medio de una URL
.gif, .jpg, .tga, y .png
*/

PImage img;
PImage img2;
PImage img3;

void setup(){
  size(500, 1000);
 
  img = loadImage("grass.jpg");
  img2 = loadImage("http://bubbamoore.org/images/grass.jpg");
  img3 = loadImage("cat.png");
}

void draw(){ 
  /*
  Las imágenes tienen los mismos atributos que los rectángulos, por defecto se dibujan desde la esquina superior izquierda

  Existen estas opciones:
  image(variable, posX, posY); Así dibujamos la imagen con su tamaño de origen
  image(variable, posX, posY, ancho, alto); Así podemos definir el tamaño al que queremos ver la imagen, podemos escalarla
  
  tint(color) nos permite "teñir" la imagen o incluso hacerla transparente usando el canal alpha
  */
  
  //Imagen en archivo
  imageMode(CORNER);
  image(img, 0, 0, 500, 500);
  
  //Imagen proveniente de una URL
  tint(255, 0, 255);
  image(img2, 0, 500, 500, 500);
  
  //PNG con transparencia
  imageMode(CENTER);
  tint(255);
  image(img3, mouseX, mouseY, img3.width/4, img3.height/4);
}

void keyReleased(){
  //con saveFrame podemos guardar fotogramas, tanto en png como en TIFF. Se guardan con el tamaño de nuestro sketch
  saveFrame("image-####.png");
}
