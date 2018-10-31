/*
HSB Farbraum: 
 fill(Winkel im Farbkreis,Sättigung,Helligkeit)
 
 */


int posX=0;
int posY=25;
int rectsize=5;
float angle=0;
float ratio=600.0/360.0;
int fade=255;

void setup() {
  size(600, 600);
  background(20);
  noStroke();
  ratio=600.0/360.0;

  println(ratio);
  frameRate(15);

}

void draw() {


println(angle);




  stroke(255);
  pushMatrix();
  translate(posX, posY);
  rotate(radians(angle));
  line(0, -25, 25, 50);
  popMatrix();
  if (posX>width) {
    posX=0;
    posY+=50;
  }
  posX+=5;
}