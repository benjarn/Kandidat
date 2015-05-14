
//Number of states
#define NSTATES 1


// Feedback vector
const float K[NSTATES] = {-1.3874}; // Controller Gain


// state trajectories for radii
const float Xd[NSTATES] = {0.2938}; // Desired states
// Potentiometer calibration (center value)
float potCal[NSTATES] = {0}; //Nollar värden i slutet på setup

// Servo Cal
const int servoCal = 80;

const float pi = 3.14159265;
