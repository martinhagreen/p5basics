int sz = 20;
int numBalls = 30;

//Array para las posiciones de X
float[] posX = new float[numBalls];
//Array para las posiciones de Y
float[] posY = new float[numBalls];
//Array para las velocidades de X
float[] velX = new float[numBalls];
//Array para las velocidades de Y
float[] velY = new float[numBalls];

void setup(){
  size(800, 600);
  smooth();
  //Iniciamos la posición y la velocidad inicial
  for(int i = 0; i<numBalls; i++){
    posX[i] = width/2;
    posY[i] = height/2;
    velX[i] = random(1,3);
    velY[i] = random(1,3);
  }
}

void draw(){
  background(0);

  
  for(int i = 0; i<numBalls; i++){
    //update positions with velocity
    posX[i] += velX[i];
    posY[i] += velY[i];

    //check the ranges within the sketch in X 
    if((posX[i]<0)||(posX[i]>width)){
      velX[i] = -velX[i];
    } 
      //check the ranges within the sketch in Y
    if((posY[i]<0)||(posY[i]>height)){
      velY[i] = -velY[i];
    } 
  }

//Dibujamos las pelotas
  for(int i = 0; i<numBalls; i++){
    noStroke();
    ellipse(posX[i],posY[i],sz,sz);
  }
}
