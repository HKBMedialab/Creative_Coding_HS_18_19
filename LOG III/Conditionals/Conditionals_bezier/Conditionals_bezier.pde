int x1=50;
int y1=250;
float cpx1=250;
float cpy1=250;
float cpx2=250;
float cpy2=250;
int x2=450;
int y2=250;


float yspeed1=10;
float yspeed2=-10;


void setup() {
  size(500, 500);
  background(255);
  smooth();
 // pixelDensity(2);
}

void draw() {
  background(255);
  bezier(x1, y1, cpx1, cpy1, cpx2, cpy2, x2, y2);
  //Debug: Points
  ellipse(x1, y1, 10, 10);
  ellipse(cpx1, cpy1, 10, 10);
  ellipse(cpx2, cpy2, 10, 10);
  ellipse(x2, y2, 10, 10);

  //add spped and check if should shrink

  cpy1+=yspeed1;
  if (cpy1>height || cpy1<0 )yspeed1*=-1;
  
  cpy2+=yspeed2;
  if (cpy2>height || cpy2<0 )yspeed2*=-1;
  
}