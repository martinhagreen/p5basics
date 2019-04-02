/*
El método random(); nos devuelve un valor aleatorio entre un rango dado
si no se indica el inicio, por defecto es de 0 a ese número
Por ejemplo: random(height) o random(20, 40)
*/



void setup(){
  size(500, 500);
  background(0);
}

void draw(){
  stroke(255, 100);
  /*
  Probad a descomentar las siguientes líneas para dar más dinamismo al sketch
  Podemos aplicar random a cualquier elemento que sea dinámico o acepte un valor, siempre teniendo en cuenta los rangos numéricos
  que necesitamos, si quieremos un random de un canal de color, hacemos un random de 0 a 255 en caso de querer usar todo el espectro.
  Un canal de color no acepta más de 255, por lo que un random(1000) no nos daría el resultado deseado, obtendríamos valores no deseados
  */
  //stroke(random(255), random(255), random(255), 100);
  //strokeWeight(random(10));
  line(0, random(height), width, random(height));
}
