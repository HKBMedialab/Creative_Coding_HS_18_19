int ellipseWidth=50;
int ellipseHeight=50;
int step=5;
int heightStep=9;

color outline=color(255, 0, 0);
boolean record = false;

void setup() {
  size(500, 500);
  pixelDensity(2);
  smooth(2);
  background(255);
}

void draw() {
  noStroke();
  fill(255, 10);
  rect(0, 0, width, height);
  noFill();
  stroke(outline);
  ellipse(width/2, height/2, ellipseWidth, ellipseHeight);
  ellipseWidth+=step;
  ellipseHeight+=heightStep;
  if (ellipseWidth>width || ellipseWidth < 50) {
    step*=-1;
    outline=color(random(255), random(255), random(255));
  }
  if (ellipseHeight>height || ellipseHeight<50) {
    heightStep*=-1;
  }
  // save 
  if (record) {
    saveFrame("bilder/#####.png");
  }
}

void keyPressed() {
  if (key == 'r') {
    record=!record;  
  }
}
