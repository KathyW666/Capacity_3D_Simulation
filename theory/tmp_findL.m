n = 1:1000;
r = power((log2(n)./n), 1/3);
a = 3.9;
b = 0.1;

L = (1./(log2(n).*r.^3)).^(1/(4-b));
plot(n, L);
hold on;
plot(n, r.^(-3/a));
% x = r.^(a/(b-4));

% plot(n, L);
% hold on;
% plot(n, x);
legend('1','2')
% % L0 = 3;
% E = r.^3*L0^(4-b)

% log(log2(n))/log(r)