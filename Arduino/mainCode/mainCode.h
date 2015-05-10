
//Number of states
#define NSTATES 3


// Feedback vector
const float K[NSTATES] = {-3.9393, 38.1116, -5.4830}; // Controller Gain


// state trajectories for radii
const float Xd[NSTATES] = {0.6762, 0.1572, 0.5557}; // Desired states

// Potentiometer calibration (center value)
float potCal[NSTATES]; // = {150,150,150}; //Nollar värden i slutet på setup

// Servo Cal
const int servoCal = 80;

const float pi = 3.14159265;
