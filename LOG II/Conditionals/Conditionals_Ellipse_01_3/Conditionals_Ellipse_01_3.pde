float ellipseWidth=20;
float ellipseHeight=500;
float easing = 0.03;

float targetWidth=500;
float targetHeight=0;


color mycolor=color(255, 0, 0);
void setup() {
  size(500, 500);
  noFill();
  stroke(mycolor);
  background(255);
}

void draw() {
  //background(255);
  fill(255, 20);
  noStroke();
  rect(0, 0, width, height);
  stroke(mycolor);
  ellipse(width/2, height/2, ellipseWidth, ellipseHeight);

  float dx=targetWidth-ellipseWidth;
  ellipseWidth+=dx*easing;

  //ellipseWidth+=diff;
  //ellipseHeight+=heightDiff;
  if (abs(dx)<50) {
    if (targetWidth==500) {
      targetWidth=0;
    } else {
      targetWidth=width;
    }
  }


  dx=targetHeight-ellipseHeight;
  ellipseHeight+=dx*easing;
  
    println(dx+" "+targetHeight+" "+ellipseHeight);

  if (abs(dx)<50) {

    if (targetHeight==500) {
      targetHeight=0;
    }
    if (ellipseHeight<=20) {
      targetHeight=width;
    }
  }
}