%% ============= 1. Setup the parameters & Allocate memory =============
global Coordinate r;
n = 30;
r = power((log2(n)/n), 1/3);
alpha = 1;
beta = 0.5;
gamma = 2;
Distance = zeros(n,n);
Coordinate = unifrnd(0,1,n,3);

%% ============= 2. Calculate distances between points =============
for i=1:n
    for j = 1:n
        Distance(i,j) = floor(abs(Coordinate(i,1)-Coordinate(j,1))/r)+...
            floor(abs(Coordinate(i,2)-Coordinate(j,2))/r)+...
            floor(abs(Coordinate(i,3)-Coordinate(j,3))/r);
    end    
end

%% ============= 3. Calculate social group adj =============
adjA = isTargetNew(Distance,alpha);

%% ============= 4. Calculate social degree of each node =============
degrees = sum(adjA, 2);

%% ============= 5. Filter 1st  =============
friendHops = Distance.*adjA;
adjB = isTargetNew(friendHops, beta);

%% ============= 6. Filter 2nd  =============
activeFreinds = friendHops.*adjB;
adjC = isTargetNew(activeFreinds, gamma, -1, true, degrees);

%% ============= 7. Plot Network Evolution  =============
Network_Evolution_Plot(adjA, adjB, adjC);