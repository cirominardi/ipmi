//Trabajo Practico 3 Comision 1
//Ciro Minardi

//Pagina de funciones

void cargarImagen(){
  PImage imagen = loadImage("foto.jpeg");
  image (imagen, 0, 0, 400, 400);
}

void dibujarFlechas(){
  
  rectMode (CENTER);
  noStroke();
  fill (255, 255, 0);
  
  // FlechaCuerpo
  int posX = 425, posY = 35, anchoFlecha = 30, altoFlecha = 14;
  
  //FlechaCabeza
  int posXTriangle = 420, posXCabeza = 400;
  
  //int posXTr = 420, posXInv = 400;
 //Primera Fila
  for (int i=0; i<width; i+=60) {
   rect (posX+i, posY, anchoFlecha, altoFlecha);
   triangle (posXCabeza+i, 36, posXTriangle+i, 14, posXTriangle+i, 58);
 }
 
 //Segunda Fila
 
 int Bajar2 = 75;
  for (int i=0; i<width; i+=60) {
    rect (posX+i, posY+Bajar2, anchoFlecha, altoFlecha);
 }
 
 //Cuarta Fila
 int Bajar4 = 200;
 for (int i=0; i<width; i+=60) {
   rect (posX+i, posY+Bajar4, anchoFlecha, altoFlecha);
   triangle (posXCabeza+i, 36+Bajar4, posXTriangle+i, 14+Bajar4, posXTriangle+i, 58+Bajar4);
 }
 
 //Quinta Fila
 int Bajar5 = 256;
 for (int i=0; i<width; i+=60) {
   rect (posX+i, posY+Bajar5, anchoFlecha, altoFlecha);
   triangle (posXCabeza+i, 36+Bajar5, posXTriangle+i, 14+Bajar5, posXTriangle+i, 58+Bajar5);
 }
 
}
