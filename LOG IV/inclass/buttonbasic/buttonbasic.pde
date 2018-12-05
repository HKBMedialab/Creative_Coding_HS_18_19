// Arduino Firmata
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;


int buttonPin = 11; 


// Funktionen: Wiederverwendbare Programmblöcke
void setup() { 
  size(500, 500);
    // Prints out the available serial ports.
  println(Arduino.list());
  
  // Modify this line, by changing the "0" to the index of the serial
  // port corresponding to your Arduino board (as it appears in the list
  // printed by the line above).
  arduino = new Arduino(this, Arduino.list()[5], 57600);
  
  arduino.pinMode(buttonPin, Arduino.INPUT_PULLUP);
}

void draw(){
println(arduino.digitalRead(buttonPin));
 if (arduino.digitalRead(buttonPin) == Arduino.LOW) {
    background(255);
  } else {
    background(0);
  }

}
