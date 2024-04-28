//Trabajo Practico 1  Comision 1 
//Ciro Minardi

PImage gata ;
void setup ()
{
  size (800, 400) ;
  background (20) ;
  gata = loadImage ("Foto de mi gata.png");
  }
  
   void draw ()
  {
    image (gata, 190, 180, 150, 150);
    fill (55, 55, 59) ;
    
    triangle (500, 200, 500, 0, 517, 119) ;
    
    triangle (600, 350, 600, 0, 645, 118) ;
    fill (255, 255, 255) ;
    
    square (490, 268, 200);
    fill (55, 55, 59) ;
     circle (583, 199, 200) ;
    fill (120, 120, 10) ;
     circle (530, 180, 50) ;
    fill (0) ;
     circle (535, 170, 30) ;
    fill (120, 120, 10) ;
     circle (640, 180, 50) ;
    fill (0) ;
     circle (635, 170, 30) ;
     
    println ("X:") ;
    println (mouseX) ;
    println ("Y:") ;
    println (mouseY) ;
  }
