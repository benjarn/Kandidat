%% Full 5 state feedback
close all;
clear all;
clc;

L1=5;
L2=15;
L3=3;
L4=15;

A=-1*[0 1 0 0 0;
     0 0 1/L4 0 0;
     0 0 -1/L4 1/L3 0;
     0 0 0 -1/L3 1/L2;
     0 0 0 0 -1/L2;
     ];

B=-1*[0 0 0 0 1/L1]';

C=eye(5);
D=zeros(5,1);
poles=eig(A); % polerna till det instabila systemet

sys=ss(A,B,C,D)

Q=eye(5); % Q-matris för lqr

R=1; % R-värde i lqr ger penalty till inputs (bör vara låg)så att styrsignalen kan påverka mycket
Q=C'*C;

[K,S,e] = lqr(sys,Q,R) % hitta kompensationsmatris K, och nya poler e

feedbackPoles = e