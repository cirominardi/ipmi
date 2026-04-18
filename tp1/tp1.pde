//Trabajo Practico 1 Comision 1
//Ciro Minardi

PImage cuadro;
int mover;
int ojo1x;
int ojo2x;

void setup () {
  size (800, 400);
  background (3, 98, 120);
  cuadro= loadImage("cuadro.jpg");
  image (cuadro, 0, 0, 400, 400);
  mover=width/2;
  ojo1x=118;
  ojo2x=226;
}

void draw () {

  /* Fondo rectangulos azules */

  noStroke();
  fill (11, 146, 140);
  rect (16 + mover, 0, 40, 200);
  rect (69 + mover, 0, 40, 200);
  rect (129 + mover, 0, 100, 200);
  rect (245 + mover, 0, 40, 200);
  rect (312 + mover, 0, 40, 200);
  rect (376 + mover, 0, 40, 200);

  /* Fondo rectangulos amarillos y verdes */

  fill (168, 120, 46);
  rect (0 + mover, 200, 400, 10);
  fill (33, 153, 82);
  rect (0 + mover, 210, 400, 300);
  fill (168, 120, 46);
  rect (0 + mover, 250, 400, 10);
  rect (0 + mover, 285, 400, 10);
  rect (0 + mover, 326, 400, 10);

  /* Cara */

  strokeWeight (5);
  stroke (0);

  // Pelo naranja //

  fill (170, 75, 20);
  quad (447, 80, 422, 263, 527, 264, 518, 55);

  // Cachete azul //

  fill (15, 122, 164);
  ellipse (542, 111, 200, 180);

  // Pelo amarillo //

  fill (236, 220, 19);
  quad (600, 260, 710, 285, 695, 62, 618, 68);

  // sombrero parte 1 //

  fill (140, 30, 0);
  ellipse (540, 50, 130, 90);
  fill (52, 139, 166);
  quad (432, 78, 400, 27, 443, 6, 500, 58);

  // Frente, Nariz y Ojo1 //

  fill (238, 229, 214);
  triangle (42 + mover, 74, 142 + mover, 71, 142 + mover, 110);
  fill (238, 229, 214);
  quad (142 + mover, 69, 141 + mover, 199, 187 + mover, 190, 157 + mover, 68);
  strokeWeight (4);
  fill (221, 126, 106);
  ellipse (ojo1x + mover, 82, 50, 13);
  fill (232, 205, 198);
  circle (ojo1x + mover, 82, 12);
  fill (238, 229, 214);
  quad (156 + mover, 71, 241 + mover, 68, 251 + mover, 86, 162 + mover, 88);

  // Cachete celeste y blanco //

  fill (111, 206, 226);
  triangle (250 + mover, 86, 166 + mover, 89, 262 + mover, 165);
  fill (246, 245, 227);
  triangle (566, 90, 588, 189, 662, 168);
  fill (111, 206, 226);
  triangle (662, 168, 582, 190, 600, 262);

  // Menton y ojo2 //

  fill (208, 107, 79);
  quad (588, 189, 511, 196, 530, 265, 599, 261);
  fill (246, 245, 227);
  quad (589, 205, 520, 226, 540, 262, 599, 261);
  fill (251, 246, 204);
  ellipse (ojo2x + mover, 120, 60, 20);
  fill (0);
  circle (ojo2x + mover, 120, 6);

  // sombrero parte 2 y detalle pelo amarillo //

  fill (243, 240, 163);
  triangle (432, 73, 722, 16, 710, 64);
  noFill();
  stroke (231, 159, 39);
  strokeWeight (6);
  curve (522, 34, 680, 102, 660, 216, 666, 255);

  /* Cuerpo */
  
  // "poncho" //
  
  strokeWeight (5);
  stroke(140, 138, 24 );
  fill(140, 138, 24);
  quad (507, 267, 662, 397, 498, 396, 446, 298);
  triangle (447, 300, 446, 358, 494, 396);
  triangle (509, 272, 552, 316, 586, 311);
  stroke (0);
  fill (23, 126, 34);
  ellipse (600, 360, 180, 100);
  quad (676, 276, 588, 308, 590, 398, 820, 400);
  fill (108, 24, 0);
  triangle (588, 310, 590, 400, 700, 400);
  line (509, 266, 582, 308);
  stroke (208, 107, 79);
  fill(140, 138, 24);
  curve (509, 266, 446, 296, 448, 362, 534, 395);
  line (509, 266, 446, 296);
  curve (448, 362, 475, 387, 510, 398, 563, 373);
  line (448, 362, 475, 386);
  
  
  // Cuello //

  stroke (0);
  fill (62, 26, 2);
  quad (114 + mover, 264, 186 + mover, 307, 272 + mover, 278, 194 + mover, 260);
  strokeWeight (4);
  fill (208, 107, 79);
  ellipse (188 + mover, 290, 20, 40);
  
}
/*void mousePressed() {
  println (mouseX, mouseY);}*/
