n = xlsread('data-a2-b0.5.xlsx','A:A');
r = power(log2(n)./n, 1/3);

E1 = xlsread('data-a2-b0.5.xlsx','B:B');
E2 = xlsread('data-a2.5-b2.5.xlsx','B:B');
E3 = xlsread('data-a3.5-b0.xlsx','B:B');
E4 = xlsread('data-a3.5-b2.xlsx','B:B');
E5 = xlsread('data-a5-b5.xlsx','B:B');
EC = xlsread('data-control.xlsx','B:B');
% 1./log2(n)./

semilogx(n, 1./log2(n)./E1,'^-','Markersize',6,'LineWidth',1.2,'DisplayName','0\leq\alpha<3, 0\leq\beta<4 and 0\leq\alpha+\beta<4');
hold on;
semilogx(n, 1./log2(n)./E2,'v-','Markersize',6,'LineWidth',1.2,'DisplayName','0\leq\alpha<3, 0\leq\beta<4 and \alpha+\beta>4');
hold on;
semilogx(n, 1./log2(n)./E3,'s-','Markersize',6,'LineWidth',1.2,'DisplayName','\alpha>3 and 3<\alpha+\beta<4');
hold on;
semilogx(n, 1./log2(n)./E4,'o-','Markersize',6,'LineWidth',1.2,'DisplayName','\alpha>3, 0\leq\beta<4 and \alpha+\beta>4');
hold on;
semilogx(n, 1./log2(n)./E5,'d-','Markersize',6,'LineWidth',1.2,'DisplayName','\alpha>3, \beta>4');
hold on;
semilogx(n, 1./log2(n)./EC,'+-.','Markersize',6,'LineWidth',1.2,'DisplayName','Pure Ad Hoc Network: 0\leq\alpha<3, 0\leq\beta<4 and 0\leq\alpha+\beta<4');
hold on;
% axis([100 10000 1.8 4]);
axis([100 10000 0 0.08]);

title('Throughput capacity \lambda_a^n versus n with different \alpha & \beta in hybrid wireless network');
legend('Location','southwest');
legend('boxoff');
grid on;
xlabel('n');
ylabel('Throughput capacity');

annotation('arrow',[0.88 0.88],[0.28 0.58]);
text(4000, 0.05, 'increasing \alpha+\beta');

% xticks([100,200,500,1000,2000,5000,10000]); 
% xticklabels({'100','200','500','1000','2000','5000','10000'});