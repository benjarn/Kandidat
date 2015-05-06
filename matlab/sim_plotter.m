%% plots the simulation in MATLAB
%% Med Styrsignal
close all;

%plot(states_sim*180/pi)
%plot(input_sim)
time=linspace(0,length(states_sim)/10,length(states_sim));

figure()
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

saveas(gcf,'bilder/Tillstand_styr','epsc')
%% Utan styrsignal
figure()
plot(time,states_sim*180/pi)
legend('phi3','phi2','phi1','y4')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')

saveas(gcf,'bilder/Tillstand','epsc')
%% Utan styrsignal, med yposition

figure()
[ax,p1,p2]=plotyy(time,states_sim*180/pi,time,y4_sim)
legend('phi3','phi2','phi1','y4')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')
ylabel(ax(2),'Position [m]') % label right y-axis

saveas(gcf,'bilder/Tillstand_Ypos','epsc')
%% Allt i en
figure()
subplot(2,1,1) % second subplot
[ax,p1,p2]=plotyy(time,states_sim*180/pi,time,y4_sim)
legend('phi3','phi2','phi1','y4')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')
ylabel(ax(2),'Position [m]') % label right y-axis

subplot(2,1,2) % second subplot
plot(time,input_sim)
title('Styrsignal')
xlabel('Tid [s]')
ylabel('Hjulställning [rad]')

saveas(gcf,'bilder/Tillstand_Ypos_styr','epsc')

%% endast theta,y4
figure()
[ax,p1,p2]=plotyy(time,theta4_sim*180/pi,time,y4_sim)
legend('theta','y4')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')
ylabel(ax(2),'Position [m]') % label right y-axis

saveas(gcf,'bilder/theta_y4','epsc')