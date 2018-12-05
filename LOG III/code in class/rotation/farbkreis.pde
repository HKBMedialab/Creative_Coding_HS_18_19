float angle=0;
float colorangle=0;

void setup() {
  size(500, 500);
  colorMode(HSB, 360);
  background(0);
}

void draw() {
  noStroke();
  fill(colorangle, 360, 360);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  rect(100, 0, 50, 10);
  popMatrix();
  
  //angle=angle+1;
  angle++;
  colorangle++;
  
  if (colorangle>360) {
    colorangle=0;
    background(0);
  }

}
