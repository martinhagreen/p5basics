//velocidades de la pelota en x e y
int speedX=3;
int speedY=6;
//tamaño de la pelota
int ballWidth = 60;
//posiciones de la pelota en X e y
int posX;
int posY;

void setup() {
  size(600,400);
  background(0);
  frameRate(30);
  noStroke ();
  //posición inicial de la pelota
   posX=width/2;
  posY=height/2;
  
  
}
            
void draw(){
  fill ((random (255)),(random (255)),(random (255)));
  
   ellipse(posX,posY,ballWidth, ballWidth);
  //actualizamos los valores de posición, añadiendo la velocidad a la posición
  //xpos+=speed equivale a escribir xpos = xpos + xspeed
  posX+=speedX;
  posY+=speedY;
  
  /*
  Condicionales para detectar los bordes de la pantalla
  Cuando nos encontramos los bordes, se revierte su dirección multiplicando por -1
  Debemos tener en cuenta el radio de la pelota, ya que el punto que estamos comprobando es el centro de ésta
  */
  
  /*
  Los || son un OR lógico, por lo que se revertirá la posición cuando cualquiera de las dos premisas sea cierta
  */
  
 if(posX>=width-ballWidth/2 || posX<=ballWidth/2){
    speedX*=-1;
  }
  if (posY>=height-ballWidth/2 || posY<=ballWidth/2){
    speedY*=-1;
  }
 
} 
