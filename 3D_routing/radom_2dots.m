function [x,y,z] = radom_2dots(r)

x1 = unifrnd(0,1);
X1 = -r/2+r*x1;
y1 = unifrnd(0,1);
Y1 = -r/2+r*y1;
z1 = unifrnd(0,1);
Z1 = -r/2+r*z1;
plot3(X1,Y1,Z1,'r^','MarkerSize',10,...
    'color',[48,128,20]/255, 'MarkerFaceColor',[48,128,20]/255);
hold on;
x2 = unifrnd(0,1);
X2 = -r/2+r*x2;
y2 = unifrnd(0,1);
Y2 = -r/2+r*y2;
z2 = unifrnd(0,1);
Z2 = -r/2+r*z2;
plot3(X2,Y2,Z2,'o','MarkerSize',10,...
    'color',[48,128,20]/255, 'MarkerFaceColor',[48,128,20]/255);
hold on;
x=[X1,X2];y=[Y1,Y2];z=[Z1,Z2];
h = plot3(x,y,z,'--','LineWidth',1.5);

set(get(get(h,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');  
leg = legend({'The source node      ','The destination node          '},'Fontsize',14,...
    'Location','southoutside','Orientation','horizantal');
set(leg,'box','off');


