%% plots the simulation in MATLAB
%% setup
close all;

%plot(states_sim*180/pi)
%plot(input_sim)
time=linspace(0,length(states_sim)/10,length(states_sim));
phi3=states_sim(:,3);
%% Med Styrsignal
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
[ax,p1,p2]=plotyy(time,-theta4_sim*180/pi,time,y4_sim)
legend('theta','y4')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')
ylabel(ax(2),'Position [m]') % label right y-axis

saveas(gcf,'bilder/theta_y4','epsc')

%% endast phi3
figure()
plot(time,phi3*180/pi)
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')
saveas(gcf,'bilder/phi3','epsc')

%% Uppdelade subplots: phi3 - theta/y4 - input
%figure()
figure('units','normalized','position',[.1 .1 .4 .5])
subplot(3,1,1) % first subplot
plot(time,phi3*180/pi)
legend('phi3')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')

subplot(3,1,2) % second
[ax,p1,p2]=plotyy(time,-theta4_sim*180/pi,time,y4_sim)
legend('theta4','y4')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')
ylabel(ax(2),'Position [m]') % label right y-axis

subplot(3,1,3) % third subplot
plot(time,input_sim)
title('Styrsignal')
xlabel('Tid [s]')
ylabel('Hjulställning [rad]')

saveas(gcf,'bilder/3subplots','epsc')
%% 3subplots med alla tillstånd ( bra för cirkel )
figure('units','normalized','position',[.1 .1 .4 .5])
subplot(3,1,1) % first subplot
plot(time,states_sim*180/pi)
legend('phi3','phi2','phi1')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')

subplot(3,1,2) % second
[ax,p1,p2]=plotyy(time,-theta4_sim*180/pi,time,y4_sim)
legend('theta4','y4')
title('Tillstånd')
xlabel('Tid [s]')
ylabel('Vinkel [grad]')
ylabel(ax(2),'Position [m]') % label right y-axis

subplot(3,1,3) % third subplot
plot(time,input_sim)
title('Styrsignal')
xlabel('Tid [s]')
ylabel('Hjulställning [rad]')

saveas(gcf,'bilder/3subplotscirkel','epsc')

%%
figure()
hold on 
plot(x4_sim,y4_sim)
circle_time=linspace(0,2*pi);
plot(r4*cos(circle_time),r4*sin(circle_time)+r4)
plot(r1*cos(circle_time)-19,r1*sin(circle_time)+r1+3,'xg')%+6)
legend('position','referens','justerad referens (-19,+3)')
hold off
xlabel('x4 [m]')
ylabel('y4 [m]')
axis equal