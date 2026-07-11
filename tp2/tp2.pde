//Trabajo Practico 2 Comision 1
//Ciro Minardi


//Variables

int miVariable, contador, pantalla;
PImage Imagen1, Imagen2, Imagen3, Imagen4, Imagen5, ImagenFinal, ImagenInicio, Logo;
PFont Fuente;
String Texto;
float posY, posX, opacidad, escalado, tamYBoton, tamXBoton, posXBoton, posYBoton, distBoton;
boolean botonActivado = false;

//Asignacion

void setup() {
  size (640, 480);
  background (205, 20, 0);
  textAlign (CENTER, CENTER);
  contador = 0;
  opacidad = 255;
  escalado = 0;
  ImagenInicio = loadImage ("Spidey2imagenInicio.jpg");
  Fuente = loadFont ("AgencyFB-Bold-35.vlw");
  Imagen1 = loadImage ("Spidey2imagen1.png");
  Imagen2 = loadImage ("Spidey2imagen2.png");
  Imagen3 = loadImage ("Spidey2imagen3.png");
  Imagen4 = loadImage ("Spidey2imagen4.png");
  Imagen5 = loadImage ("Spidey2imagen5.png");
  ImagenFinal = loadImage ("Spidey2imagenFinal.png");
  Logo = loadImage ("SpideyLogo2.png");
  posXBoton = 230;
  posYBoton = 354;
  tamXBoton = 150;
  tamYBoton = 60;
  posX = 0;
  posY = 0;
  pantalla = 0;
}
//Presentacion

void draw () {
  miVariable = frameCount;

  //PantallaInicio

  if (pantalla == 0) {
    miVariable ++;
    image (ImagenInicio, posX, posY, 640, 480);
    image (Logo, 90, posY + miVariable, 450, 50);
    tint (255, opacidad);
  }

  // Transicion Inicio

  contador ++;
  if (contador > 0 && contador < 180 ) {
    opacidad = map (contador, 0, 100, 0, 255);
    if (contador>160) {
      pantalla=1;
    }
  }

  //Pantalla1

  if (pantalla == 1) {

    image (Imagen1, posX, posY, 640, 480);
    textFont (Fuente);
    fill (255);
    text ("Spider-Man 2 es una película \ndel 2004 dirigida por Sam Raimi", 0+miVariable, 350);
  }
  //Transicion 1

  if (contador > 220 && contador < 320 ) {
    opacidad = map (contador, 0, 100, 0, 255);
    if (contador>280) {
      pantalla = 2;
    }
  }

  //Pantalla2

  if (pantalla == 2) {

    image (Imagen2, posX, posY, 640, 480);
    fill (200);
    textSize (escalado);
    if (escalado < 30) {
      escalado += 1.5;
    }
    text ("La historia trata de como Peter Parker (Spider-man)\n intenta balancear ambas identidades mientras \n pierde sus poderes por el estres", 325, -50+miVariable);
  }

  //Transicion 2

  if (contador > 320 && contador < 430 ) {
    if (contador>400) {
      pantalla = 3;
    }
  }

  //Pantalla3

  if (pantalla == 3) {

    image (Imagen3, posX, posY, 640, 480);
    fill (255, 20, 60);
    textSize (30);
    text ("Spider-man:\n En esta entrega, Spider-man sufre las consecuencias de \n intentar sobrellevar ambas vidas, \n teniendo que elegir entre ser el hombre-araña o \n ser Peter Parker.", -150+miVariable, 350);
  }

  //Transicion 3


  if (contador > 430 && contador < 530 ) {
    if (contador>520) {
      pantalla = 4;
    }
  }

  //Pantalla4

  if (pantalla == 4) {

    image (Imagen4, posX, posY, 640, 480);
    fill (220, 20, 40);
    textSize (30);
    text ("Dr. Octopus:\n Tras un catastrofico accidente en un experimento, \n Otto Octavius se transforma en el malvado\n Dr. Octopus, su mente siendo fusionada con sus\n tentaculos mecanicos, Doc Ock buscara\n la forma de recrear su experimento y\n eliminar a Spider-man.", -260+miVariable, 300);
  }

  //Transicion 4

  if (contador > 540 && contador < 640 ) {
    if (contador>630) {
      pantalla = 5;
    }
  }

  //Pantalla5

  if (pantalla == 5) {

    image (Imagen5, posX, posY, 640, 480);
    fill (255, 220, 150);
    text ("Ambos personajes, heroe y villano, \n se enfrentaran varias veces, siendo \n peleas visualmente increibles que se\n mantienen a día de hoy.", 325, -550+miVariable);
  }

  //Transicion 5

  if (contador > 640 && contador < 780 ) {
    if (contador>770) {
      pantalla = 6;
    }
  }

  //Pantalla6

  if (pantalla == 6) {

    image (ImagenFinal, posX, posY, 640, 480);
    fill (225, 190, 105);
    text ("La pelicula fue un exito con el publico y la critica,\n volviendose un clasico del cine de superheroes y\n una pionera del genero.", 300, 100);
    if (mouseX>posXBoton && mouseX<posXBoton + tamXBoton && mouseY> posYBoton && mouseY < posYBoton + tamYBoton) { //Aca delimito el area del boton, la accion va a suceder mientras este clickeando dentro de el rectangulo, como la imagen funciona como un rectangulo, este tipo de botones es muy util para personalizar
      fill(0, 255, 0);
    } else {
      fill(255, 0, 0);
    }
    distBoton= dist(mouseX, mouseY, posXBoton, posYBoton);
    rect (posXBoton, posYBoton, tamXBoton, tamYBoton);
  }
}
//Boton reinicio

void mousePressed () {
  
 if (distBoton<tamYBoton/2) {
   botonActivado = true;
   reinicio ();
 }
}
void reinicio () {
  frameCount =-1;
 }
