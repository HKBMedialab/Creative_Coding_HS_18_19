
float rectWidth=500;
float ellipseWidth=500;

void setup() {
  size(500, 500);
  pixelDensity(2);
  stroke(200, 200, 0);
}


void draw() {
  pushMatrix();
  translate(width/2, height/2);
  fill(50, 50, 100);

  rect(-rectWidth/2, -rectWidth/2, rectWidth, rectWidth);
  fill(100, 50, 100);

  ellipse(0, 0, ellipseWidth, ellipseWidth);
  popMatrix();
  rectWidth-=5;
  ellipseWidth-=6;
}