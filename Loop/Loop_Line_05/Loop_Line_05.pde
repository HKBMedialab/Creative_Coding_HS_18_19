int posX=0;
int col=0;
void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  stroke(col);
  pushMatrix();
  translate(posX, 0);
  for (int i=0; i<10; i++) {
    line(width/10*i, 0, width/10*i, height);
  }
  popMatrix();
  posX++;
  if (posX>width/10) {
    posX=0;
    delay(500);
    if (col==0) {
      col=255;
    } else {
      col=0;
    }
  }
}