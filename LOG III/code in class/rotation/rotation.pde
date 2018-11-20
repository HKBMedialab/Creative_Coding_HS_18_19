float angle=0;

void setup() {
  size(500, 500);
}

void draw() {
  pushMatrix();
  translate(mouseX, mouseY);
  rotate(radians(angle));
  rect(0, 0, 50, 50);
  rect(60, 60, 50, 50);
  popMatrix();
  
  
  rotate(radians(angle));
  rect(width/2,height/2,50,50);
  
  
  
  //angle++;
  angle=angle+1;
}
