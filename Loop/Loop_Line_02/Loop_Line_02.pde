/*
HKB Creative Coding
 Michael Flueckiger
 */



int iterations=100;
int angle=0;
// Setup Funktion, wird einmal aufgerufen
void setup() { 
  size(500, 500); // Grösse des Fensters definieren
  background(255);
  pixelDensity(2);
  smooth(8);
}

// draw Funktion, wird geloopt
void draw() {
  background(255);
  pushMatrix();
  translate(width/2, height/2);
  for (int i=0; i<iterations; i++) {
    line(90, 0, 10, 250);
    rotate(2*PI/100);
  }
  popMatrix();
}