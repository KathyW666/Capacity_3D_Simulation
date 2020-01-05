L = 10;
n = 1:1:10000;
r = (log2(n)./n).^(1/3);
a = 4;
b = 0.5;

L1 = (1./log(n)./r.^(-3)).^(1/(4-b));
L2 = r.^(a/(b-4));
plot(n, L1);
hold on;
plot(n, L2);
hold on;
legend('L1','L2');
