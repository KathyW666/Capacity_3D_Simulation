function [origin] = dots(r,side)
% The origin point is (0,0,0) and the function returns r*r original center coordinates of
% small cubes¡£
origin = zeros(r^3,3);
num=1;
    for i=0:r-1
        for j=0:r-1
            for k=0:r-1
                origin(num,:)=[i*side j*side k*side]-(r-1)*side/2;
                num=num+1;
            end
        end
    end
end
% origin(1,:)=[0,0,0];
% origin(2,:)=[0,1,0];
% origin(3,:)=[1,0,0];
% origin(4,:)=[1,1,0];
% origin(5,:)=[0,-1,0];
% origin(6,:)=[-1,0,0];
% origin(7,:)=[-1,-1,0];
% origin(8,:)=[1,-1,0];
% origin(9,:)=[-1,1,0];
% origin(10,:)=[0,0,1];
% origin(11,:)=[0,1,1];
% origin(12,:)=[1,0,1];
% origin(13,:)=[1,1,1];
% origin(14,:)=[0,-1,1];
% origin(15,:)=[-1,0,1];
% origin(16,:)=[-1,-1,1];
% origin(17,:)=[1,-1,1];
% origin(18,:)=[0,0,-1];
% origin(19,:)=[0,1,-1];
% origin(20,:)=[1,0,-1];
% origin(21,:)=[1,1,-1];
% origin(22,:)=[0,-1,-1];
% origin(23,:)=[-1,0,-1];
% origin(24,:)=[-1,-1,-1];
% origin(25,:)=[1,-1,-1];
% origin(26,:)=[-1,1,-1];
% origin(27,:)=[-1,1,1];