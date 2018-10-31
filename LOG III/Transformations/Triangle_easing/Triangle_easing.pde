int posX=0;
int col=0;
int tw=100;
float th=tw/2*sqrt(3);
float angle=0;
float angleTarget=240;

int speed=250;

boolean stop=false;


void setup() {
  size(500, 500,FX2D);
  background(0);
  noStroke();
  fill(255);
  render();
}

void draw() {
  background(0);
  println(angle);
  if (stop) {
    delay(900);
    stop=false;
  }
  if (frameCount%speed>=speed-1) {
    angle=0;
    stop=true;
  }
  pushMatrix();
  translate(width/2+tw/2,height/2);
  render();
  popMatrix();
  
 
  angle=map2(frameCount%speed, 0, speed, 0, 240, QUADRATIC, EASE_IN_OUT);

println(frameCount%speed);

}


void render() {

  pushMatrix();
  translate(0, 0);
  rotate(radians(angle));
  triangle(0, 0, -tw, 0, -tw/2, -th);
  popMatrix();

  pushMatrix();
  translate(-tw/2, +th);
  rotate(radians(angle));
  triangle(0, 0, tw/2, -th, tw, 0);
  popMatrix();

  pushMatrix();
  translate(-tw, 0);
  rotate(radians(angle));
  triangle(0, 0, -tw/2, th, tw/2, th);
  popMatrix();

  pushMatrix();
  translate(0, 0);
  triangle(0, 0, -tw, 0, -tw/2, th);
  popMatrix();
}