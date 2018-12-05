import processing.serial.*;
import cc.arduino.*;

Arduino arduino;


int xPos;
int yPos;
float ellipseSize;

void setup() {
  size(500, 500);
  println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[5], 57600);
  //arduino = new Arduino(this, "/dev/tty.usbmodem621", 57600);
  xPos=width/2;
  yPos=height/2;
}

void draw() {
  int input1 =arduino.analogRead(0);
  println(input1);
  ellipseSize=map(input1, 0, 1000, 0, 200);
  ellipse(xPos, yPos, ellipseSize, ellipseSize);
}
