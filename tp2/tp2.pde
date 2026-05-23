//Trabajo Practico 2 Comision 1
//Ciro Minardi



//Variables

int miVariable, contador, pantalla;
PImage Imagen1, ImagenInicio, Logo;
PFont Fuente;
String Texto;
float velY, posY, posX, opacidad;
boolean ToF;

//Asignacion

void setup() {
  size (640, 480);
  background (205, 20, 0);
  contador = 0;
  opacidad = 255;
  ImagenInicio = loadImage ("Spidey2imagenInicio.jpg");
  Fuente = loadFont ("AgencyFB-Bold-35.vlw");
  Imagen1 = loadImage ("Spidey2imagen2.png");
  Logo = loadImage ("SpideyLogo2.png");
  velY = 1;
  posX = 0;
  posY = 0;
  pantalla = 1;
}
//Presentacion

void draw () {
  println (mouseX, mouseY);
  miVariable = frameCount;

  //PantallaInicio

  if (pantalla == 1) {
    miVariable ++;
    image (ImagenInicio, posX, posY, 640, 480);
    image (Logo, 90, posY + miVariable, 450, 50);
    tint (255, opacidad);
  }

  // Transicion Inicio
  
contador ++;
  if (contador >0 && contador < 150 ) {
    opacidad = map (contador, 0, 150, 0, 255);
  }
  //Pantalla1

  image (Imagen1, posX, posY, 640, 480);
  textFont (Fuente);
  fill (255);
  text ("Spider-Man 2 es una película \ndel 2004 dirigida por Sam Raimi", 0+miVariable, 350);

  //Transicion 1

  //Pantalla2
}
