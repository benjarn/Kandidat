%% 3 state feedback
close all;
clear all;
clc;

L1=5;
L2=15;

% % %bakåt och cirkel
A=-1*[-1/L2;
    ];

B=-1*[1/L1]';

% % %cirkel
alpha=0.1; 
r1=L1/tan(alpha);
r2=sqrt(r1^2-L1^2);

phi1e=atan(L2/r2);

% A1=cos(phi1e)*cos(phi2e)*cos(phi3e)/L4;
% A2=-cos(phi1e)*(cos(phi2e)/L3+sin(phi3e)*sin(phi2e)/L4);
% A3=sin(phi1e)*(sin(phi3e)*cos(phi2e)/L4);
% A4=cos(phi1e)/L2+sin(phi2e)*sin(phi1e)/L3;
% A=-1*[A1,A2,A3;
%     0,cos(phi2e)*cos(phi1e)/L3,A4;
%     0,0,-cos(phi1e)/L2];
% B=-1*[0;0;1/(L1*cos(alpha)^2)];
% %     
C=eye(1);
D=zeros(1,1);

%poles=eig(A); % polerna till det instabila systemet

sys=ss(A,B,C,D)
% figure()
% step(sys)

Q=eye(1); % Q-matris för lqr

% % Alternativ 1
% R=(1/0.6)^2; % R-värde i lqr ger penalty till inputs (bör vara låg)så att styrsignalen kan påverka mycket
% Q(1,1)=1/2; % sätter gissningar till (1/rage)^2
% Q(2,2)=(1/pi)^2;
% Q(3,3)=0.1;
% Q(4,4)=0.1;

% Alternativ 2
R=1; % R-värde i lqr ger penalty till inputs (bör vara låg)så att styrsignalen kan påverka mycket
Q=C'*C;



[K,S,e] = lqr(sys,Q,R) % hitta kompensationsmatris K, och nya poler e

feedbackPoles = e


Xd=[phi1e]


%step(sys_cl)
