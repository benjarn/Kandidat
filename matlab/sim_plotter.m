%% plots the simulation in MATLAB

%plot(states_sim*180/pi)
%plot(input_sim)

subplot(2,1,1) % second subplot
plot(states_sim*180/pi)
legend('phi3','phi2','phi1')
title('Tillstånd')

subplot(2,1,2) % second subplot
plot(input_sim)
title('Styrsignal')

%%
figure()
plot(states_sim*180/pi)
legend('phi3','phi2','phi1')
title('Tillstånd')
