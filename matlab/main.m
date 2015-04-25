L1=5;
L2=15;
L3=3;
L4=15;

%bil
x0=0
y0=0

x1=x0-10;
y1=
% släpvagn
x2
y2

%dolly
x3
y3
% släpvagn
x4
y4

%hold on
for i=1:length(x1)
    figure(1)
    clf(figure(1))
    line([x3(i)+x2(i), x3(i)],[y3(i)+y2(i),y3(i)],'LineWidth',4,'color','red'); % släpvagn
    line([x3(i)+x2(i)+x1(i), x3(i)+x2(i)],[y3(i)+y2(i)+y1(i),y3(i)+y2(i)],'LineWidth',4,'color','blue'); % Dolly
    line([x3(i)+x2(i)+x1(i)+x0(i), x3(i)+x2(i)+x1(i)],[y3(i)+y2(i)+y1(i)+y0(i),y3(i)+y2(i)+y1(i)],'LineWidth',4,'color','green'); % Lastbil
    axis([-100 100 -100 100])
    pause(0.001)
end
hold off