int xPos=0;
int yPos=0;
int speedX=5;
int speedY=7;


int paddleRightPosX;
int paddleRightPosY;
int paddleRightWidth=20;
int paddleRightHeight=150;


void setup() {
  size(500, 500);
  xPos=width/2;
  yPos=height/2;

  paddleRightPosX=width-40;
  paddleRightPosY=0;
}

void draw() {

  ellipse(xPos, yPos, 20, 20);
  xPos+=speedX;
  yPos+=speedY;



  if (yPos>width || yPos<0) {
    speedY*=-1;
  }

  // BounceFromPaddle

  if (xPos>paddleRightPosX && yPos>paddleRightPosY && yPos<paddleRightPosY+paddleRightHeight) {
    speedX*=-1;
  }

  //Bounce
  //if (xPos>width || xPos<0) {
  if ( xPos<0) {
        speedX*=-1;

  }
  if (xPos>width ) {

    xPos=width/2;
  }

  rect(paddleRightPosX, paddleRightPosY, paddleRightWidth, paddleRightHeight);
}
