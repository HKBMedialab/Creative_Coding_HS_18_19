/*
HKB Creative Coding
 Michael Flueckiger
 */



int iterations=50;

float yPos=0;

float theta=3*PI/2;



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
  stroke(100, 200);
  /* pushMatrix();
   for (int i=0; i<iterations; i++) {
   line(0, 0, 0, yPos);
   translate(10,0);
   }
   popMatrix();
   yPos=250/2+sin(theta)*250/2;*/

  pushMatrix();
  for (int i=0; i<iterations; i++) {
    line(0, 0, 0, yPos);
    translate(width/iterations, 0);
  }
  popMatrix();


  pushMatrix();
  translate(width/iterations/2, 0);
  for (int i=0; i<iterations; i++) {
    line(0, height, 0, height-yPos);
    translate(width/iterations, 0);
  }
  popMatrix();


  yPos=map(sin(theta), -1, 1, 0, width/2+120);



  if (yPos>width/2) {
    theta+=0.1;
  } else {
    theta+=0.01;
  }
}