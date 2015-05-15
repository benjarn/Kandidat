
//Number of states
#define NSTATES 2


// Feedback vector
const float K[NSTATES] = {7.89,-3.89}; // Controller Gain

// state trajectories for radii
const float Xd[NSTATES] = {0.0885, 0.1957}; // Desired states
// Potentiometer calibration (center value)
float potCal[NSTATES] = {0,0}; //Nollar värden i slutet på setup

// Servo Cal
const int servoCal = 80;

const float pi = 3.14159265;
