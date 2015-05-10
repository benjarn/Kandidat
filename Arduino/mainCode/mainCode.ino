
/*
  Main code for the truck's thinking
  Connections:
  Potentiometers: A0,A1,A2
  Servo: D3
  H-bridge: D5 - enable,D6 - relay-switch
  buttons: D8,D9,D10,D11

  Funktioner:
  C - D8: stoppar systemet
  A - D9: kör framåt tills släpen har rätat ut
  D - D10: backar rakt bakåt
  B - D11: backar runt en cirkulär bana
  
  A+B - Manuellt läge
    - A - vänster 30grader
    - B - höger 30grader
    - D - rakt fram
    - C - stoppar och går ur manuellt läge
*/

// Includes
#include "mainCode.h"

// Defines
int steeringMode=0; // Steering mode ( 0-Forward, 1-straightBack, 2-circleBack )
int currentGear=0; // Current gear, for stopping protection
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

//Motor
const int motorEnablePin = 5;
const int gearSwitchPin = 6;

//Setup
void setup() {
  frontServo.attach(3);

  pinMode(button0, INPUT);
  pinMode(button1, INPUT);
  pinMode(button2, INPUT);
  pinMode(button3, INPUT);
  
  pinMode(motorEnablePin, OUTPUT);
  pinMode(gearSwitchPin, OUTPUT);

  Serial.begin(9600);
  Serial.println("Starting...");
  delay(1000);
  steer(0);
  potCal[0] = getAngle(pot0);
  potCal[1] = getAngle(pot1);
  potCal[2] = getAngle(pot2);

}

//Loop
void loop() {
  //check steering mode
  if(readMode() != 0){
    steeringMode = readMode(); // read input for the steeringmode
  }
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
    case 6:
      // Manual mode
      while(readMode() != 1){ //Stay in manual mode until button1 is pressed
        int mode = readMode();
        gear(1);
        if(mode==2){
          steer(-30);
          delay(100);
        }else if(mode==4){
          steer(30);
          delay(100);
        }else if(mode==8){
          steer(0);
          delay(100);
        }
      delay(50);
      }
      break;
    default:
      // Stop the truck
      steer(0);
      gear(0);
  }
  delay(100); // delay for stability?
}

//Functions
int readMode(){
  // set the steering via remote or button
  return digitalRead(button0) + 2*digitalRead(button1) + 8*digitalRead(button2) + 4*digitalRead(button3);
}

void gear(int selectedGear){
  // Sets the H-bridge
  switch (selectedGear){
    case 1:
      // Drive forward
      if(currentGear!=1){
        gear(0);
        digitalWrite(gearSwitchPin,LOW);
        delay(200);
        digitalWrite(motorEnablePin,HIGH);
      }
      currentGear=1;
      break;
    case 2:
      // Drive in reverse
      if(currentGear!=2){
        gear(0);
        digitalWrite(gearSwitchPin,HIGH);
        delay(200);
        digitalWrite(motorEnablePin,HIGH);
      }
      currentGear=2;
      break;
    default:
      // stops the motor
      currentGear=0;
      digitalWrite(motorEnablePin,LOW);
      delay(1000);
  }
}
