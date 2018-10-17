int ellipseWidth=20;
int diff=5;
color mycolor=color(255, 0, 0);
void setup() {
  size(500, 500);
  pixelDensity(2);
  noFill();
  stroke(mycolor);
  background(255);
}

void draw() {
  stroke(mycolor,100);
  ellipse(mouseX, mouseY, ellipseWidth, ellipseWidth);

  //ellipseWidth+=diff;
  if (ellipseWidth>width) {
    diff*=-1;
  }
  if (ellipseWidth<=20) {
    diff*=-1;
    mycolor=color(random(255), random(255), random(255));
  }
}