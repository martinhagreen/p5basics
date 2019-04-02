/*
En processing, cualquier transformación de tipo rotación, escala o traslación se realiza del mismo modo
Por poner un ejemplo sencillo, las rotaciones se hacen desde el punto 0,0 del eje de coordenadas,
no giramos el elemento en sí, sino todo el canvas
las rotaciones se indican en radianes, aunque también se pueden indicar en grados
para hacer una rotación, debemos trasladar el eje de coordenadas al punto desde donde queremos girar la figura
*/

void setup(){  
  size(500, 500);
  noStroke();
  rectMode(CENTER);
}


void draw(){
  background(0);
  fill(255);
  /*
  //trasladamos el 0,0 de nuestro sketch al centro del canvas
  translate(width/2, height/2);
  rotate(PI/4);
  //entonces dibujamos el rectángulo con centro en ese nuevo 0,0, y girará desde ese punto
  rect(0,0, 100, 100);
  */
  
  //cualquier cosa que dibujemos a partir de aquí, tendrá aplicadas estas transformaciones, por lo que puede ser conflictivo
  //por defecto, utilizaremos siempre los métodos translate(), rotate() o scale() entre dos métodos llamados pushMatrix() y popMatrix()
  //que lo que hacen es modificar y restablecer el sistema de coordenadas
  pushMatrix();
    translate(width/2, height/2);
    rotate(PI/4);
    //entonces dibujamos el rectángulo con centro en ese nuevo 0,0, y girará desde ese punto
    rect(0,0, 200, 200);
  popMatrix();
}
