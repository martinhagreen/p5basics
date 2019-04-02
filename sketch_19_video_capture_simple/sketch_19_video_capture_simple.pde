//Importamos la librería de Vídeo
import processing.video.*;
//Instanciamos un objeto de tipo Capture, ya que vamos a usar un dispositivo externo
Capture cam;

void setup() {
  size(960, 540);
  // Inicializamos la camara
  cam = new Capture(this);
  //Empezamos la captura desde la cámara
  cam.start();
}

void draw() {
  //Si la cámara esta disponible, leemos los frames
  if (cam.available() == true) {
    cam.read();
  }
 
  //Escalamos la imagen para hacer un mirror en horizontal para así espejarla en ese eje
  pushMatrix();
    scale(-1, 1);
    image(cam, -width, 0, width, height);
  popMatrix();
}
