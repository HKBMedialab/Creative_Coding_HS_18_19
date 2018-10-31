/*
HSB Farbraum: 
 fill(Winkel im Farbkreis,Sättigung,Helligkeit)
 
 */


int posX=0;
int posY=25;



int posX2=0;
int posY2=25;


int delay=0;


//int maxangle=1440;
int maxangle=900;


void setup() {
  size(600, 600);
  background(20);
  noStroke();

  posY2=height-25;
}

void draw() {
  delay(delay);
  delay=0;
  float angle=map(posX, 0, width, 0, maxangle);

  println(angle);
  stroke(255,200);

  if (angle>0&&angle%180==0) {
    stroke(255, 0, 0,200);
    delay=300;
  }

  pushMatrix();
  translate(posX, posY);
  rotate(radians(angle));
  line(0, -25, 0, 25);
  popMatrix();


  pushMatrix();
  translate(posX2, posY2);
  rotate(radians(map(posX2, 0, width, maxangle, 0)));
  line(0, -25, 0, 25);
  popMatrix();


  posX+=10;

  if (posX>width) {
    posX=0;
    posY+=50;
  }


 if (posY>height) {
    posX=0;
    posY=0;
  }


  posX2+=10;
  if (posX2>width) {
    posX2=0;
    posY2-=50;
  }
  
   if (posY2<0) {
    posX2=0;
    posY2=height;
  }
  
}