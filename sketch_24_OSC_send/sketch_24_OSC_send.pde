/*
OSCP5 nos permite enviar mensajes por el protocolo de comunicación OSC
(Open Sound Control)
oscP5 website: http://www.sojamo.de/oscP5
*/

/*
En este ejemplo, este sketch envía datos por OSC, un número entero que es la posición
en X del ratón, identificado por una etiqueta
*/
 
import oscP5.*;
import netP5.*;
  
OscP5 oscP5;
NetAddress myRemoteLocation;
int myValue;

void setup() {
  size(400,400);
  
  oscP5 = new OscP5(this,12345);
  myRemoteLocation = new NetAddress("localhost",12000);
}


void draw() {
  /* in the following different ways of creating osc messages are shown by example */
  OscMessage myMessage = new OscMessage("/test");
  myMessage.add(mouseX); /* add an int to the osc message */

  /* 
  Envia el mensaje
  */
  oscP5.send(myMessage, myRemoteLocation); 

}
