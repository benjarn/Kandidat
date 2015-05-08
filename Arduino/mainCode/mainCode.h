
//Number of states
#define NSTATES 3


// Feedback vector
const float K[NSTATES] = {-3.9393, 38.1116, -5.4830}; // Controller Gain


// state trajectories for radii
const float Xd[NSTATES] = {1, 2, 3}; // Desired states

// Potentiometer calibration (center value)
const float potCal[NSTATES] = {150,150,150};

// Servo Cal
const int servoCal = 75;

const float pi = 3.14159265;
