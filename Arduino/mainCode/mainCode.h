
//Number of states
#define NSTATES 3


// Feedback vector
const float K[NSTATES] = {-6.6456, 15.8516, -5.1146}; // Controller Gain


// state trajectories for radii
const float Xd[NSTATES] = {0.1709,0.1037,0.1676}; // Desired states
// Potentiometer calibration (center value)
float potCal[NSTATES] = {0,0,0}; //Nollar värden i slutet på setup

// Servo Cal
const int servoCal = 80;

const float pi = 3.14159265;
