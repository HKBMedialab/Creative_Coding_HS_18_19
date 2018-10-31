/*
HSB Farbraum: 
 fill(Winkel im Farbkreis,Sättigung,Helligkeit)
 
 */


int posX=0;
int posY=25;



int posX2=0;
int posY2=25;




void setup() {
  size(600, 600);
  background(20);
  noStroke();

  frameRate(5);
  posY2=height-25;
}

void draw() {


  float angle=map(posX, 0, width, 0, 720);

  println(angle);
  stroke(255);

  if (angle>0&&angle%180==0) {
    println("angle! ");
    stroke(255, 0, 0);
  }

  pushMatrix();
  translate(posX, posY);
  rotate(radians(angle));
  line(0, -25, 0, 25);
  popMatrix();
  if (angle>0&&angle%180==0) {
    println("delay "+angle);
    println("rad "+radians(angle));

    stroke(255, 255, 0);
    rect(0, 0, 50, 50);
    delay(2000);
  }

  stroke(255);
  pushMatrix();
  translate(posX2, posY2);
  rotate(radians(map(posX2, 0, width, 720, 0)));
  line(0, -25, 0, 25);
  popMatrix();




  if (posX>width) {
    posX=0;
    posY+=50;
  }
  posX+=10;


  if (posX2>width) {
    posX2=0;
    posY2-=50;
  }
  posX2+=10;
}