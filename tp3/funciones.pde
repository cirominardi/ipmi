//Cursada Complementaria
//Trabajo Practico 3 Comision 1
//Ciro Minardi

//Pagina de funciones e interacciones

float mouseXMap;
float mouseYMap;
float ancho = width, alto = height;

//PImage

void cargarImagen(int posX, int posY) {
  PImage imagen = loadImage("foto.jpeg");
  image (imagen, 0, 0, posX, posY);
}

//Flechas

void dibujarFlechas() {
  
  println (mouseX, mouseY);
  push();
  translate (430, 39);
  rectMode (CENTER);
  noStroke();
  fill (255, 255, 0);
  
  // FlechaCuerpo
  float anchoFlecha = 35, altoFlecha = 14;
  //flechaCabeza
  float posXTriangle = 5, posXCabeza = 0;
  
  for (int x=0; x<width; x+=60) {
    for (int y=0; y<height; y+=65) {
    rect (x, y, anchoFlecha, altoFlecha);
    triangle (posXCabeza-35+x, y, posXTriangle+x, -25+y, posXTriangle+x, 30+y); 
    float distMouseX= dist(mouseX, mouseY ,x, y);
      mouseXMap=map(distMouseX, 0, width, 10, 240);
      fill(0,mouseXMap);
      if (Prueba(x, y) == true) {
        fill(255, 255, 0);
      } else {
        fill(255, 250 ,mouseXMap);
      }rect(x, y, anchoFlecha, altoFlecha ); 
    }
  }
  pop();
}

boolean Prueba (int valor1, int valor2) {
  if ((valor1+valor2)%2==0) {
    return true;
  } else {
    return false;
  }
}  
