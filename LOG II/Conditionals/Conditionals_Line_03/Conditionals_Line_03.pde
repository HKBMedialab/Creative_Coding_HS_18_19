
int posY=height;
color mycolor=color(255, 0, 0);
int speed=2;
int posX=500;


void setup() { 
  size(500, 500); // Grösse des Fensters definieren
  background(220);
  //line(200, 50, 400, 400);
  pixelDensity(2);
  posY=height;
  frameRate(20);
}

void draw() {

  stroke(mycolor, 50);
  // Genau umgekhert gemacht: 
  //solange positionX >= 500 ist, soll die positionY verändert werden. 
  
  if (posX>=500) {
    posY-=speed;
    line(0, height, posX, posY);
  }

  // 
  //solange positionY >= 500 ist, soll die positionX verändert werden. 
  if (posY<=0) {
    posX-=speed;
    line(0, height, posX, posY);
  }

// wenn die Linien am Rand ankommen, soll die Richtung umgedreht werden

  if (posX<=0) {
    speed*=-1;
    mycolor=color(random(255), random(255), random(255));
  }

  if (posY>=height) {
    speed*=-1;
    mycolor=color(random(255), random(255), random(255));
  }
}