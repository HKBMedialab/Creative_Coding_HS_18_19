int xPos=0;
int yPos=0;
int rectWidth=20;
int hue=0;
int saturation=255;

void setup() {
  size(500, 500);
  noStroke();
  colorMode(HSB);
}


void draw() {
  float h=map(xPos,0,width,0,100); 
  fill(h,255,255); 
  rect(xPos, yPos, rectWidth, rectWidth);
  xPos=xPos+rectWidth;
  saturation=saturation-10;

  if (xPos>width) {
    xPos=0;
    yPos=yPos+rectWidth;
    hue=hue+10;
    saturation=255;
  }
  
  if (yPos>height) {
    xPos=0;
    yPos=0;
    hue=0;
    exit();
  }
  saveFrame("bilder/#####.png");
}