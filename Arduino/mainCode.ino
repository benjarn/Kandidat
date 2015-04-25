
/*
  Main code for the truck's thinking
  Connections:
  Potentiometers: A0,A1,A2
  Servo: D3
  H-bridge: 
  buttons: D8,D9,D10,D11
  
  Funktioner:
  D8: stoppar systemet
  D9: kör framåt tills släpen har rätat ut
  D10: backar rakt bakåt
  D11: backar runt en cirkulär bana
*/

// Includes
#include "mainCode.h"

// Defines
int steeringMode=0; // Steering mode ( 0-Forward, 1-straightBack, 2-circleBack )

//Sensors
const int pot0 = 0;
const int pot1 = 1;
const int pot2 = 2;

const int button0 = 8;
const int button1 = 9;
const int button2 = 10;
const int button3 = 11;

//Servo
#include <Servo.h>
Servo frontServo;  // create servo object


//Setup
void setup() {
  frontServo.attach(3);
  
  pinMode(button0, INPUT);
  pinMode(button1, INPUT);
  pinMode(button2, INPUT);
  pinMode(button3, INPUT);

  Serial.begin(9600);
  Serial.println("Starting...");
  delay(1000);
}

//Loop
void loop() {
  //check steering mode
  steeringMode = readMode(); // read input for the steeringmode
  switch (steeringMode) {
    case 2:
      // Straight forward to align trailers
      gear(1);
      steer(0); // steer straight (0rad)
      break;
    case 4:
      // Reverse straight back
      gear(2); // Start to move backwards
      controller(false);
      break;
    case 8:
      // Reverse in a circle
      gear(2);
      controller(true);
      break;
    default:
      // Stop the truck
      gear(0);
  }
  delay(1000); // delay for stability?
}

//Functions
int readMode(){
  // set the steering via remote or button
  return digitalRead(button0) + 2*digitalRead(button1) + 4*digitalRead(button2) + 8*digitalRead(button3);
}

void gear(int selectedGear){
  // Sets the H-bridge
  switch (selectedGear){
    case 1:
      // kör fram = true
      break;
    case 2:
      // kör bakåt = true
      break;
    default:
      // kör = false
      int i =0;
  }
}
