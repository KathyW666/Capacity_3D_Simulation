side=1;
r=4;
n = 50;
Co_xyz = cell(r^3,3);
h=zeros(r^3,1);
Direct = {[0 1 1 0 0 0;1 1 0 0 1 1;1 1 0 0 1 1;0 1 1 0 0 0],...
    [0 0 1 1 0 0;0 1 1 0 0 0;0 1 1 0 1 1;0 0 1 1 1 1],...
    [0 0 0 0 0 1;0 0 0 0 0 1;1 1 1 1 0 1;1 1 1 1 0 1]};
origin = dots(r,side);
hi = zeros(n,1);
for i = 1 : n
    hi(i) = plot3(unifrnd(-r/2,r/2),unifrnd(-r/2,r/2),unifrnd(-r/2,r/2),...
        'x','color',[25/255,25/255,112/255],'LineWidth',1.5);
    set(hi(i),'handlevisibility','off');
    hold on;
end


for i=1:r^3
    for j = 1:3
        Co_xyz{i,j} = (Direct{1,j}-0.5)*side+origin(i,j);
    end
end

% [x,y,z]=radom_2dots(r);
% num = routing(x,y,z,origin,r);


for i=1:6
    for j=1:r^3
%         if ismember(j,num)
%             h(j)=patch(Co_xyz{j,1}(:,i),Co_xyz{j,2}(:,i),Co_xyz{j,3}(:,i),'r');      
%         else
%             h(j)=patch(Co_xyz{j,1}(:,i),Co_xyz{j,2}(:,i),Co_xyz{j,3}(:,i),'b');            
%         end
        h(j)=patch(Co_xyz{j,1}(:,i),Co_xyz{j,2}(:,i),Co_xyz{j,3}(:,i),'b'); 
        set(get(get(h(j),'Annotation'),'LegendInformation'),'IconDisplayStyle','off');

    end


    for j=1:r^3
        set(h(j),'edgecolor','w','LineWidth',1,'facealpha',0.05);
%         if ismember(j,num)
%             set(h(j),'edgecolor','w','LineWidth',1,'facealpha',0.2);
%         else
%             set(h(j),'edgecolor','w','LineWidth',1,'facealpha',0.05);
%         end
    end    
end


axis equal;
grid on;
set(gca,'xtick',[],'xticklabel',[]);
set(gca,'ytick',[],'yticklabel',[]);
set(gca,'ztick',[],'zticklabel',[]);
view(-33,18);
% set(0,'defaultfigurecolor','w');
hold on;
