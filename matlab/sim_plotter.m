%% plots the simulation in MATLAB
%% Med Styrsignal
close all;

%plot(states_sim*180/pi)
%plot(input_sim)
time=linspace(0,length(states_sim)/10,length(states_sim));

subplot(2,1,1) % second subplot
plot(time,states_sim*180/pi)
legend('phi3','phi2','phi1')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')

subplot(2,1,2) % second subplot
plot(time,input_sim)
title('Styrsignal')
xlabel('Tid [s]')
ylabel('Hjulställning [rad]')
%% Utan styrsignal

figure()
plot(time,states_sim*180/pi)
legend('phi3','phi2','phi1')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [rad]')