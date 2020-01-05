n = 30;
r = power((log2(n)/n), 1/3);
q = int16(3);
alpha = 1;
beta = 0.5;
gamma = 2;
Distance = zeros(n,n);
Coordinate = unifrnd(0,1,n,3);