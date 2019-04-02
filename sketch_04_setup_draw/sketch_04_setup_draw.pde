/*
En Processing, un programa se estructura como mínimo en dos funciones básicas
Una función es un bloque de código que ejecuta un código en concreto entre llaves {}*/

/*
La función setup(){} se ejecuta una sóla vez cuando el programa arranca, en ella podemos definir propiedades
Como por ejemplo el tamaño de la ventana o un fondo predeterminado, así como el frameRate
Elementos que no queremos modificar
*/


/*
draw(){} es una función que se ejecuta en bucle hasta que el programa se cierre
Aquí es donde programaremos elementos que se mueven, cambian de color o incluso otras modificaciones
Es programación dinámica
*/


void setup(){
  size(500, 500);
   /*
   Si definimos el fondo SÓLO en el setup, solo se dibuja una vez al inicio
   y cualquier cosa que dibujemos en draw se superpondrá con lo anterior, porque el fondo no se actualiza
   */
   background(0);
}

void draw(){
  /*
  Si el fondo se actualiza en cada frame, al igual que el movimiento de los elementos,
  no tendremos rastro
  */
  //Descomenta la línea siguiente (36) para comprobar el efecto
  
  //background(0);
  noStroke();
  fill(255, 100);
  ellipse(mouseX, mouseY, 50, 50);
  
  
  /*
  Si dibujamos un rectangulo del tamaño del sketch
  con el mismo color que el fondo pero con algo de transparencia, 
  tendremos una estela difuminada.
  Cuanto más transparente sea ese cuadrado, tardará más tiempo en
  llegar a opaco y la estela durará más tiempo.
  */
  
  //fill(0, 50);
  //rect(0,0, width, height);
}

/*
Como podeis ver, mouseX,  mouseY, width y height, aparecen de otro color
Eso es porque son palabras y variables propias del sistema
width y height equivalen a las medidas dadas en size(), así podremos trabajar de modo proporcional
mouseX y mouseY nos devuelven la posición del mouse en la ventana, teniendo foco en ella

*/
