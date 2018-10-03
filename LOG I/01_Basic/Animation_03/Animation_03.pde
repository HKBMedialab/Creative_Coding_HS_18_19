
float rectWidth=20;
int ellipseWidth=10;
float easing = 0.05;
float targetWidth=500;
float angle=0;
float angleTarget=0;

float red=0;

float ease(float p) {
  return 3*p*p - 2*p*p*p;
}
float ease(float p, float g) {
  if (p < 0.5) 
    return 0.5 * pow(2*p, g);
  else
    return 1 - 0.5 * pow(2*(1 - p), g);
}


void setup() {
  size(500, 500);
  pixelDensity(2);
  frameRate(60);
}


void draw() {
  //background(255);
  float dx=targetWidth-rectWidth;
  rectWidth+=dx*easing;
  
  if (abs(dx)<1) {
    if (targetWidth==500) {
      targetWidth=0;
      angleTarget+=PI/8;
    } else {
      targetWidth=width;
      angleTarget+=PI/8;
    }
  }

  fill(red, 200, 200);
  pushMatrix();

  translate(width/2, height/2);
 angle= lerp(angle,angleTarget,0.1);
  rotate(angle);
  rect(-rectWidth/2, -rectWidth/2, rectWidth, rectWidth);
  popMatrix();
  //rectWidth++;
  
  
  red=lerp(red,255,0.005);
}