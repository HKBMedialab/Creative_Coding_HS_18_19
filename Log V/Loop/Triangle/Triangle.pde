int posX=0;
int col=0;
int tw=100;
float th=tw/2*sqrt(3);
float angle=0;


void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  background(255, 0, 0);
  noStroke();
  angle+=1;
  fill(255);
  pushMatrix();
  for (int i=0; i<7; i++) {
    pushMatrix();
    for (int j=0; j<6; j++) {
      pushMatrix();
      rotate(radians(angle));
      translate(-tw/2, -2*th/3);
      triangle(tw/2, 0, 0, th, tw, th);
      popMatrix();
      translate(tw, 0);
    }
    popMatrix();
    translate(0, th);
  }
  popMatrix();




  if (angle%60==1) {
    delay(1000);
  }
}