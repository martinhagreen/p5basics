size(500, 500);
background(0);

//como vimos, los rectangulos se dibujan por defecto desde la esquina superior izquierda
//Si dibujamos una elipse y un cuadrado en el mismo punto, lo podemos comprobar
noStroke();
fill(255, 100);
rect(100,100,100, 100);
ellipse(100, 100, 100, 100);


//si utilizamos el método rectMode, podemos cambiar el modo de dibujarse del rectángulo
rectMode(CENTER);
noStroke();
fill(255, 100);
rect(300,100,100, 100);
ellipse(300, 100, 100, 100);


//tambien podemos utilizar colores hexadecimales en vez de RGB
fill(#FE03FF);
ellipse(250, 350, 150, 150);
