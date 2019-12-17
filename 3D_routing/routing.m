function [num] = routing(x,y,z,origin,r)
%Find the number of cubes crossed by the line segment
num = [];
D1 = [x(1);y(1);z(1)];
D2 = [x(2);y(2);z(2)];
lower_bound = origin-0.5;
upper_bound = origin+0.5;

for k = 0:0.01:1
    temp = D1+k*(D2-D1);
    for i = 1:r^3
        if temp' < upper_bound(i,:) & temp' > lower_bound(i,:) == [1,1,1]
            num = [num i];
        end
    end
end
num = unique(num);