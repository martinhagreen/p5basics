/*
En esta pestaña, sólo debemos fijarnos en la función setup(), que es donde se genera nuestra interfaz.
*/

class ControlFrame extends PApplet {
  int w, h;
  PApplet parent;
  ControlP5 cp5;

  public ControlFrame(PApplet _parent, int _w, int _h, String _name) {
    super();   
    parent = _parent;
    w=_w;
    h=_h;
    PApplet.runSketch(new String[]{this.getClass().getName()}, this);
  }

  public void settings() {
    size(w, h);  
  }

  public void setup() {
   //definimos la posición inicial de la ventana de la GUI
   surface.setLocation(10, 10);
   cp5 = new ControlP5(this);
   //Podemos añadir distintos tipos de elementos de interfaz, botones, toggles, sliders, rotary sliders, radiobuttons....
   
   /*
   Añadimos al objeto cp5, un elemento
   1- Le damos un nombre
   2- Le indicamos la referencia de a que variable debe ir "unida" o relacioanada (plugTo)
   3- Indicamos el rango en el que queremos que funcione el objeto, mínimo y máximo valor
   4- Inicializamos el slider en un valor en concreto
   5- Le damos una posición al slider dentro de la ventana de la GUI
   6- Le damos un tamaño
   .....
   Existen más modificadores, de forma, color, etc.... está todo en la referencia
   */
   
   cp5.addSlider("Tamanho").plugTo(parent, "tamanho").setRange(10., 400.).setValue(20).setPosition(10, 10).setSize(200, 30);  
   
   cp5.addToggle("ON/OFF").plugTo(parent, "on").setValue(false).setPosition(10, 50).setSize(50,50);
   
}

void draw() {
   //La ventana de la GUI tendrá el fondo negro
    background(0);
  }
}
