
/*
  Controller for the backing straight case
  uses a vector with the states (states[])
*/


void controller(bool inCircle) {
  // One iteration of the controller
  /*
  - Read Sensors
  - Calculate feedback
  - Actuate steering
  */

  float desStates[NSTATES] = {0, 0, 0};

  if (inCircle) { //Runs in circle

    desStates[0] = Xd[0];
    desStates[1] = Xd[1];
    desStates[2] = Xd[2];
  }


  float states[NSTATES] = {getAngle(pot0), getAngle(pot1), getAngle(pot2)};

  float steerAngle = 0;
  for (int i = 0; i < NSTATES; i++) {
    steerAngle += K[i] * (states[i] - desStates[i]);
  }

  steer(rad2deg(steerAngle));
}


// Helper functions
void steer( int angle ) {
  angle+= -servoCal;
  Serial.print("Steering angle: ");
  Serial.println(angle+servoCal);
  if(angle>170)
    angle=170;
  frontServo.write(angle);
}

float getAngle(int sensorPin) {
  // reads the sensor and returns an angle
  if (sensorPin == pot1 || sensorPin == pot2)
    return 0;

  int sensorValue = analogRead(sensorPin);
  sensorValue = map(sensorValue, 0, 1023, 0, 300); // mapping example
  sensorValue -= potCal[sensorPin];

  Serial.print("Potentiometer: ");
  Serial.println(sensorValue);
  return deg2rad(sensorValue);
}

float deg2rad(int deg){
  float rad = deg*pi/180;
  return rad;
}

int rad2deg(float rad){
  int deg = rad*180/pi;
  return deg;
}
