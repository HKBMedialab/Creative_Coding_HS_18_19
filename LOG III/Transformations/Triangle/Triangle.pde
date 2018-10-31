int posX=0;
int col=0;
int tw=100;
float th=tw/2*sqrt(3);
float angle=0;

boolean stop=true;


void setup() {
  size(500, 500);
  background(255, 0, 0);
  noStroke();
  fill(255);

  render();
}

void draw() {
  background(255, 0, 0);
  if (angle>240) {
    angle=0;
  }
  /*
  if (angle>240) {
   angle=0;
   stop=true;
   }
   */
  render();
  angle+=1;
  /*
  if (stop) {
   delay(1000);
   stop=false;
   }*/
}


void render() {
  pushMatrix();
  translate(width/2, 200);
  rotate(radians(angle));
  triangle(0, 0, -tw, 0, -tw/2, -th);
  popMatrix();

  pushMatrix();
  translate(width/2-tw/2, 200+th);
  rotate(radians(angle));
  triangle(0, 0, tw/2, -th, tw, 0);
  popMatrix();

  pushMatrix();
  translate(width/2-tw, 200);
  rotate(radians(angle));
  triangle(0, 0, -tw/2, th, tw/2, th);
  popMatrix();

  pushMatrix();
  translate(width/2, 200);
  triangle(0, 0, -tw, 0, -tw/2, th);
  popMatrix();
}