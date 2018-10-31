/*
HKB Creative Coding
 Einführung
 Michael Flueckiger
 */



int posX=0;
int posY=0;
int posX2=0;
color mycolor=color(100, 0, 0);
int speed=10;
int offset=0;

// Setup Funktion, wird einmal aufgerufen
void setup() { 
  size(500, 500); // Grösse des Fensters definieren
  background(220);
  //line(200, 50, 400, 400);
  pixelDensity(2);
  posX2=width;
  posY=offset;
  background(#FFF1D6);
}

// draw Funktion, wird geloopt
void draw() {

  stroke(mycolor);
  line(posX, posY, posX2, posY);
  posY+=speed;

  if (posY>height) {
    offset+=1;
    posY=offset;
  }
}
