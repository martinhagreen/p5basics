/*
Un bucle for nos permite ejecutar una operación repetitiva dentro de un rango ahorrándonos líneas de código
Por ejemplo, dibujar una malla
*/

int gap = 10;

void setup(){
  size(500, 500);
}

void draw(){
  background(0);
  stroke(255);
  
  /*
  La estructura es la siguiente:
  for (inicialización; comprobación; update){
    operación 
  }
  
  Inicializamos la variable, puede ser en 0 o en otro valor
  Comprobación, mientras la variable sea menor que...
  La variable se suma a otro valor, que en este caso es otra variable la cual podemos modificar
  i valdría, 0, 10, 20, 30, 40...hasta llegar a width, que en este caso es 500
  */
  
  //Los bucles podemos anidarlos:
  
  for(int i = 0; i < width; i = i + gap){
    for(int j = 0; j < height; j = j + gap){
      line(i, 0, i, height ); //lineas verticales
      line(0, j, width, j); //lineas horizontales
    }
  }
  
  //Por ejemplo, la variable gap se podría modificar:
  
  //gap = int(map(mouseX, 0, width, 5, 100));

}
