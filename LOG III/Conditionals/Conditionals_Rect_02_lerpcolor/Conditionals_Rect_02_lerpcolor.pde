int posx=0;
int posy=0;
int rectsize=20;

// zweite stufe
int offset=0;

color colorX1=color(255,0,0);
color colorX2=color(255,255,0);
color colorY1=color(0,0,255);
color colorY2=color(0,255,255);

void setup() {
  size(500, 500);
  background(255);
  colorMode(RGB, 500);
   noStroke();
}

void draw() {
  color interX = lerpColor(colorX1, colorX2, map(posx,0,width,0,1));
  color interY = lerpColor(colorY1, colorY2, map(posy,0,height,0,1));
  
  color mix= lerpColor(interX, interY,map(posy,0,height,0,1));

  fill(mix);
  rect(posx, posy, rectsize, rectsize);
  posx+=rectsize;
  if (posx>=width) {
    posx=offset;
    posy+=rectsize;
  }

 if (posy>height) {
   posy=0;
    offset-=10;
    posx=offset;
  }
}
