%% ============= 1. Setup the parameters & Allocate memory =============
n = 100;
r=power((log2(n)/n), 1/3);
q = int16(3);
alpha = 1;
beta = 0.7;
gamma = 1;
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
%% ============= 3. Plot points =============
subplot(2,2,1)
plotVisualBasis(Coordinate, r);

%% ============= 4. Calculate social group adj =============
adjA = isTargetNew(Distance,alpha);

%% ============= 5. Plot Network A =============
subplot(2,2,2)
plotVisualBasis(Coordinate, r);
gplot3(adjA, Coordinate);

%% ============= 6. Calculate social degree of each node =============
degrees = sum(adjA, 2);

%% ============= 7. Filter 1st  =============
friendHops = Distance.*adjA;
adjB = isTargetNew(friendHops, beta);

%% ============= 8. Plot Network B =============
subplot(2,2,3)
plotVisualBasis(Coordinate, r);
gplot3(adjB, Coordinate);

%% ============= 9. Filter 2nd  =============
activeFreinds = friendHops.*adjB;
adjC = isTargetNew(activeFreinds, gamma, -1, true, degrees);

%% ============= 8. Plot Network C =============
subplot(2,2,4)
plotVisualBasis(Coordinate, r);
gplot3(adjC, Coordinate);


