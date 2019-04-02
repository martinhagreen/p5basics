/*
Un condicional nos permite ejecutar acciones o funciones cuando se cumpla una premisa, que puede ser un booleano,
o una comparación numérica
*/

void setup(){
  size(500, 500);
}

void draw(){
  background(0);
  //Lo que esté escrito dentro del if, se ejecutará cuando sea verdadera 
  
  //Escribir if(mousePressed) es igual a if(mousePressed == true)
  //también se podría invertir, y ser if(mousePressed == false), funcionaría a la inversa
  
  if(mousePressed){
    ellipse(width/2, height/2, 100, 100);
  }
  
  /*
  Los condicionales se pueden completar para ejecutar otra acción cuando esta sea falsa
  Por ejemplo:
  */
  
  if(mouseX <= width/2){
    fill(255, 0, 0); 
  } else {
     fill(0, 255, 0);
  }
  
  /*
  mientras la posición del mouse sea menor o igual a la mitad del ancho (<=), se rellenará de rojo
  en caso contrario, se rellenará de verde
  */
   
}
