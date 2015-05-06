%% plots the simulation in MATLAB
%% Med Styrsignal
close all;

%plot(states_sim*180/pi)
%plot(input_sim)
angles=states_sim(:,2:5);
y4=states_sim(:,1);
time=linspace(0,length(states_sim)/10,length(states_sim));

figure()
subplot(2,1,1) % second subplot
plot(time,angles*180/pi)
legend('theta','phi3','phi2','phi1')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')

subplot(2,1,2) % second subplot
plot(time,input_sim)
title('Styrsignal')
xlabel('Tid [s]')
ylabel('Hjulställning [rad]')

saveas(gcf,'bilder/5tillstand/Tillstand_styr','epsc')
%% Utan styrsignal
figure()
plot(time,angles*180/pi)
legend('theta','phi3','phi2','phi1')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')

saveas(gcf,'bilder/5tillstand/Tillstand','epsc')
%% Utan styrsignal, med yposition

figure()
[ax,p1,p2]=plotyy(time,angles*180/pi,time,y4)
legend('theta','phi3','phi2','phi1','y4')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')
ylabel(ax(2),'Position [m]') % label right y-axis

saveas(gcf,'bilder/5tillstand/Tillstand_Ypos','epsc')
%% Allt i en
figure()
subplot(2,1,1) % second subplot
[ax,p1,p2]=plotyy(time,angles*180/pi,time,y4)
legend('theta','phi3','phi2','phi1','y4')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')
ylabel(ax(2),'Position [m]') % label right y-axis

subplot(2,1,2) % second subplot
plot(time,input_sim)
title('Styrsignal')
xlabel('Tid [s]')
ylabel('Hjulställning [rad]')

saveas(gcf,'bilder/5tillstand/Tillstand_Ypos_styr','epsc')
%% endast theta,y4
figure()
[ax,p1,p2]=plotyy(time,angles(:,1)*180/pi,time,y4)
legend('theta','y4')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')
ylabel(ax(2),'Position [m]') % label right y-axis

saveas(gcf,'bilder/5tillstand/theta_y4','epsc')