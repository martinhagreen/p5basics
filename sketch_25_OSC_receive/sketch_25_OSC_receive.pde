/*
Este sketch recibe los datos por OSC, esperando un tipo de dato
en concreto y una etiqueta conocida.
*/

import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress myRemoteLocation;
int value;


void setup() {
  size(400,400);
  oscP5 = new OscP5(this,12000);
  myRemoteLocation = new NetAddress("localhost",10000);
}

void draw() {
  background(0);  
  fill(255);
  text(value, width/2,height/2);
}

void oscEvent(OscMessage theOscMessage) {
   if (theOscMessage.checkAddrPattern("/test")==true) {
      value =  theOscMessage.get(0).intValue(); 
      println(value);
  }
}
