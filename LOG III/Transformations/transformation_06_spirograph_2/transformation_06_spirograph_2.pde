/*
HSB Farbraum: 
 fill(Winkel im Farbkreis,Sättigung,Helligkeit)
 
 */


int posX=0;
int posY=25;



int posX2=0;
int posY2=25;


int delay=0;
float angle=0;
float angle2=0;

int maxangle=900;

float h, s, b;

int  mincol, maxcol;
int minS, maxS;
int minB, maxB;
float scale=100;


PVector global = new PVector();
PVector local = new PVector();



void setup() {
  size(600, 600, P2D);
  background(20);
  noStroke();
  colorMode(HSB);
  posY2=height-25;

  h=0;
  s=200;
  b=200;
  noStroke();

  mincol=10;
  maxcol=0;

  minS=255;
  maxS=150;

  minB=100;
  maxB=255;
  frameRate(200);
  smooth(8);
}

void draw() {

  //background(0);
  if (frameCount%100==0) {
    fill(0, 10);
    rect(0, 0, width, height);
  }
 pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  translate(250, 0);
  stroke(h, s, b, 100);

 // line(-50, 0, 0, 0);

  rotate(radians(angle2));
  translate(50, 0);
  fill(h, s, b,100);
  noStroke();
   //ellipse(0, 0, 10, 10);
  stroke(h, s, b, 200);
  line(-100, 0, 0, 0);
  popMatrix();



  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  translate(100, 0);
  stroke(0, 100);

  line(-200, 0, 0, 0);
  //  line(-100,-100 , 100, 0);


  rotate(radians(angle2));
  translate(100, 0);
  fill(h, s, b,100);
  noStroke();
 //  ellipse(0, 0, 5, 5);
  stroke(h, s, b, 255);

  line(-100, 0, 0, 0);
  popMatrix();




  angle+=1;
  angle2+=5;
  if (angle>=360) {
    angle=0;
    mincol+=5;
    maxcol+=5;
  }

  if (angle2>=360)angle2=0;

  if (angle2%180==0) { 
    int t=mincol;
    mincol=maxcol;
    maxcol=t;

    t=minS;
    minS=maxS;
    maxS=t;

    t=minB;
    minB=maxB;
    maxB=t;
  }
  h=map(angle2%180, 0, 180, mincol, maxcol);
  s=map(angle2%180, 0, 180, minS, maxS);
  b=map(angle2%180, 0, 180, minB, maxB);
  
  //scale+=0.11;
}
