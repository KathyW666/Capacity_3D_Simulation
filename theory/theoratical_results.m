n = 1000;
r = power((log2(n)./n), 1/3);

% a = 2;
% b = 0.5;
% L3 = (1/(log2(n)*r^(3-a)))^(1/(4-a-b));
% L = L3:0.01:10;
% res3 = 1./(log2(n)*r^(3-a)*L.^(4-a-b));
% plot(L, res3, 'LineWidth',1.5);
% hold on;
% plot([L3 L3],[1./(log2(n)*r^(3-a)*L3.^(4-a-b)) 0], 'k--')
% L = 0:0.01:L3;
% plot(L,ones(length(L)), 'LineWidth',1.5);
% title('0\leq\alpha<3, 0\leq\alpha+\beta<4, (\alpha=2, \beta=0.5)')
% axis([0 10 0 1.2]);
% set(gcf, 'Color', 'w');
% set(gca,'xtick',[])
% set(gca,'ytick',[])
% box off;

% a = 2.5;
% b = 2.5;
% L4 = (1/(log2(n)*r^3))^(1/(4-b));
% L = L4:0.01:10;
% res4 = 1./(log2(n)*r^3*L.^(4-b));
% plot(L, res4, 'LineWidth',1.5);
% hold on;
% plot([L4 L4], [1./(log2(n)*r^3*L4.^(4-b)) 0], 'k--');
% hold on;
% L = 0:0.01:L4;
% plot(L,ones(length(L)), 'LineWidth',1.5);
% title('0\leq\alpha<3, 0\leq\beta<3, \alpha+\beta>4 (\alpha=2.5, \beta = 2.5)')
% axis([0 10 0 1.2]);
% set(gcf, 'Color', 'w');
% set(gca,'xtick',[])
% set(gca,'ytick',[])
% box off;
% % 
% a = 3.5;
% b = 0;
% figure(3);
% L1 = (1/(log2(n)*r^3))^(1/(4-b));
% L = L1:0.01:10;
% res1 = 1./(log2(n)*r^3*L.^(4-b));
% plot(L, res1, 'LineWidth',1.5);
% hold on;
% L2 = log2(n)^(-1/(4-a-b));
% L = L2:0.01:L1;
% res2 = 1./(log2(n)*L.^(4-a-b));
% plot(L, res2, 'LineWidth',1.5);
% hold on;
% plot([L1 L1],[1/(log2(n)*r^3*L1^(4-b)) 0], 'k--')
% L = 0:0.01:L2;
% plot(L,ones(length(L)), 'LineWidth',1.5);
% title('\alpha>3, 0\leq\beta<4, 3<\alpha+\beta<4, (\alpha=3.5, \beta = 0)')
% axis([0 10 0 1.2]);
% set(gcf, 'Color', 'w');
% set(gca,'xtick',[])
% set(gca,'ytick',[])
% box off;
% % 
a = 3.5;
b = 2;
figure(4);
L5 = (1/(log2(n)*r^3))^(1/(4-b))
L = L5:0.01:10;
res5 = 1./(log2(n)*r^3*L.^(4-b));
plot(L, res5, 'LineWidth',1.5);
hold on;
plot([L5 L5], [1./(log2(n)*r^3*L5.^(4-b)) 0], 'k--');
L = 0:0.01:L5;
plot(L,ones(length(L)), 'LineWidth',1.5);
title('\alpha>3, 0\leq\beta<4, \alpha+\beta>4, (\alpha=3.5, \beta = 2)')
axis([0 10 0 1.2]);
set(gcf, 'Color', 'w');
set(gca,'xtick',[])
set(gca,'ytick',[])
box off;

% a = 4;
% b = 5;
% figure(5);
% L = 0:0.01:10;
% plot(L,ones(length(L)), 'LineWidth',1.5);
% title('\alpha=4, \beta = 5')
% axis([0 10 0 1.2]);
% set(gcf, 'Color', 'w');
% set(gca,'xtick',[])
% set(gca,'ytick',[])
% box off;
