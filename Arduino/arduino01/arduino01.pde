import processing.serial.*;
import cc.arduino.*;

Arduino arduino;


int xPos;
int yPos;
int ellipseSize;

void setup() {
  println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[5], 57600);
  //arduino = new Arduino(this, "/dev/tty.usbmodem621", 57600);
  xPos=width/2;
  yPos=height/2;
}

void draw() {


  ellipse(xPos, yPos, ellipseSize, ellipseSize);



  noFill();
  for (int i = 0; i <= 5; i++) {
    ellipse(280 + i * 30, 240, arduino.analogRead(i) / 16, arduino.analogRead(i) / 16);
  }
}
