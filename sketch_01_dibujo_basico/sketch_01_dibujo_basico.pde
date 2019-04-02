//https://processing.org/tutorials/drawing/

/*
Por convención, siempre escribiremos cada llamada a función o elemento en una linea
el programa sabe que esa linea terminó y debe pasar a la siguiente, por los puntos y coma del final
El espaciado entre elementos es indiferente
*/
//size(ancho, alto) define el tamaño de nuestra ventana
size(500, 500); 

//el origen de coordenadas por defecto está en la esquina superior izquierda de la ventana

//un punto se define por dos coordenadas, x e y
//point(x, y);
point(10, 10);

//una linea se define por dos puntos dados
//line(x1, y1, x2, y2);
line(50, 50, 100, 100);

//un rectangulo necesita un punto que por defecto es la esquina
//y un ancho y un alto, si son identicos es un cuadrado
//rect(x, y, ancho, alto);
rect(100,200, 100, 100);
//si son diferentes es un rectangulo
rect(100, 350, 150, 50);

//una elipse necesita el punto inicial, el centro, y el ancho y el alto
//al igual que el rectangulo, si ancho y alto son iguales, es un circulo
//ellipse(x, y, ancho, alto);
ellipse(350, 250, 100, 100);

//si son diferentes,obtendremos una elipse
ellipse(350, 370, 100, 50);

//un triángulo se dibuja según 3 puntos dados
//triangle(x1, y1, x2, y2, x3, y3);
triangle(400, 50, 300, 100, 300, 200);



//podemos dibujar formas mas complejas definiendo sus vértices como puntos, 
//usando vertex() y beginShape(), o curvas como curveVertex()
