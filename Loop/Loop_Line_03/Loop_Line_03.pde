/*
HKB Creative Coding
 Michael Flueckiger
 */



int iterations=100;
int angle=0;

float xPos=50;
float speed=1;
float maxtrigger=100;
float mintrigger=-100;
float theta=0;


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
  stroke(100,200);
  pushMatrix();
  translate(width/2, height/2);
  fill(200,100,100);
  
  ellipse(0,0,10+sin(theta)*100,10+sin(theta)*100);
  theta+=0.01;
    rotate(angle);
    
    
  

  for (int i=0; i<iterations; i++) {
    line(xPos, 0, 10, 250);
    rotate(2*PI/100);
  }
  popMatrix();

 // xPos+=speed;
  xPos=10+sin(theta)*100;
  if (xPos>maxtrigger || xPos<mintrigger)speed*=-1;
  angle++;
}