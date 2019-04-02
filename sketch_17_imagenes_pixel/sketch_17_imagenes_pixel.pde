
PImage img;
//Tamaño inicial del pixel
int pixls= 20;

void setup(){
  size(800,800);
  noStroke();
  img = loadImage("random.jpg");
  img.resize(width,height);
}

void draw(){
  //loadPixels() guarda un "snapshot" de los pixeles que hay en pantalla
  loadPixels();
 
  int pixls = int(map(mouseX, 0, width, 0, 100));
  
  //con dos bucles for anidados, recorremos la imagen en vertical y horizontal, para leer el color dominante en cada pixel
  for(int i=0;i<pixls;i++){   
    for(int j=0;j<pixls;j++){
      //leemos y guardamos los valores de color de cada pixel
      float r = red(img.pixels[((height/pixls)*(j))*(width)+(width/pixls*(i))]);
      float g = green(img.pixels[((height/pixls)*(j))*(width)+(width/pixls*(i))]);
      float b = blue(img.pixels[((height/pixls)*(j))*(width)+(width/pixls*(i))]);
      //rellenamos los píxeles con la información obtenida
      fill(r,g,b);
      rect((width/pixls*(i)),(height/pixls)*(j),width/pixls,height/pixls);
    }
  }
}
