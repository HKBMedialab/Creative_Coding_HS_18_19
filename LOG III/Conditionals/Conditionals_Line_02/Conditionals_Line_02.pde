/*
HKB Creative Coding
 Einführung
 Michael Flueckiger
 */



int posX=0;
int posY=height;
color mycolor=color(255, 0, 0);
int speed=2;


// Setup Funktion, wird einmal aufgerufen
void setup() { 
  size(500, 500); // Grösse des Fensters definieren
  background(220);
  //line(200, 50, 400, 400);
  pixelDensity(2);
  posY=height;
}

// draw Funktion, wird geloopt
void draw() {

  stroke(mycolor, 50);
  line(posX, posY, width, height);
  if (posY>0) {
    posY-=speed;
  } else {
    posX+=speed;
  }


  if (posX>width) {
    posX=0;
    posY=width;
    mycolor=color(random(255),random(255),random(255));
  }
}