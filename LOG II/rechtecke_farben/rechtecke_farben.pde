int xPos=0;
int yPos=0;
int rectWidth=50;

float min=100;
float max=150;

void setup() {
  size(500, 500);
  noStroke();
  colorMode(HSB);
  frameRate(30);
}


void draw() {
  
// weil wir nicht über den rand aus zeichnen wollen, soll der Zeilenubruch bei 
// width-rectWidth passieren. dass muss dann aber auch in der mapfunktion so sein, 
//damit die genau gleich mapt wie die xPos-range, die wir eigentlich haben

  float h=map(xPos,0,width-rectWidth,min,max); 
 
  fill(h,255,255); 
  rect(xPos, yPos, rectWidth, rectWidth);
  xPos=xPos+rectWidth;

// hier der umbruch bei xPos grösser als breite-rechteckbreite
  if (xPos>width-rectWidth) {
    xPos=0;
    yPos=yPos+rectWidth;
  }
  
  if (yPos>height) {
    xPos=0;
    yPos=0;   
    // das minimum soll das neue maximum werden und umgekehrt...
    float temp=min;
    min=max;
    max=temp;
  }
}