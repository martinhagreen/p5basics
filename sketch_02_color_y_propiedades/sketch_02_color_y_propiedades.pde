//https://processing.org/tutorials/color/

size(500, 500);
//el color del fondo de nuestra ventana se modifica usnado background()
//Necesita 3 canales de color (rojo, verde y azul), el rango es de 0 a 255 cada uno de ellos
//background(r, g, b);

//fondo rojo
background(255, 0, 0);

//los métodos que modifican un elemento, hay que escribirlos antes del elemento para que se aplique, ejemplo:
//relleno
//ancho de borde
//forma

//todos los elementos asociados con color pueden tener un cuarto canal de transparencia, con el mismo rango (0-255)
//por defecto el color de las formas es blanco y el borde negro con ancho de 1 pixel

//con fill(r,g,b,a) cambiamos el color de relleno
//con stroke(r,g,b,a) cambiamos el color del borde 
//con strokeWeight(ancho) cambiamos el ancho del borde

//si quisiesemos eliminar alguna característica tenemos otros metodos
//noStroke(); dibujamos la forma sin borde
//noFill(); dibujamos la forma sin relleno

//un circulo con relleno blanco
fill(255); 
ellipse(100, 150, 100, 100);

//un circulo azul sin borde con relleno azul con transparencia
//vemos que obtenemos un morado
noStroke();
fill(0, 0, 255, 100);
ellipse(250, 150, 100, 100);

//un circulo sin relleno y con borde blanco de 10 px
//blanco sería (255, 255, 255). Al indicar una sola cifra indicamos escala de grises
//negro sería fill(0, 0, 0) = fill(0);
stroke(255);
strokeWeight(10);
noFill();
ellipse(400, 150, 100, 100);

//cualquier elemento que dibujemos después, cogera las características dadas previamente a no ser que indiquemos lo contrario
//los puntos y las líneas solo admiten metodos asociados a stroke, al no tener relleno
rect(50, 300, 100, 100);
point(250, 300);

stroke(0, 0, 255);
point(300, 300);

stroke(0, 255, 0);
point(350, 300);
