%% ============= 1. Setup the parameters & Allocate memory =============
L = 5;
n = 1000;
r = power((log2(n)/n), 1/3);
alpha = 5;
beta = 5;
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

%% ============= 6. Filter 3rd: Average Hop per flow  =============
flowHop = sum(Distance.*adjC, 2); 
[adflowHop, sumFlows] = isAdHocFlow(flowHop, L);
sumHops = sum(adflowHop);
averageHop = sumHops / sumFlows




