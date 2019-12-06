normal = 17;
social = 50;

subplot(1,2,1);
plotVisualBasis(Coordinate, r);
h = plot3(Coordinate(social,1),Coordinate(social,2),Coordinate(social,3),'xr');
hold on;

% source node
h1 = plot3(Coordinate(social,1),Coordinate(social,2),Coordinate(social,3),'rp','MarkerFaceColor','r','MarkerSize',16);
hold on;

% friendGroup of source node
friendGroup = find(adjA(social,:));
for i=1:length(friendGroup)
    h2 = plot3(Coordinate(friendGroup(i),1),Coordinate(friendGroup(i),2),Coordinate(friendGroup(i),3),'bo','MarkerSize',8);
    plot3([Coordinate(social,1), Coordinate(friendGroup(i),1)],...
        [Coordinate(social,2), Coordinate(friendGroup(i),2)],...
        [Coordinate(social,3), Coordinate(friendGroup(i),3)],'-','Color',[0.8 0.8 0.75])
    hold on;
end

% active nodes of friendGroup
activeNodes = find(adjB(social,:));
for i=1:length(activeNodes)
    h3 = plot3(Coordinate(activeNodes(i),1),Coordinate(activeNodes(i),2),Coordinate(activeNodes(i),3),'bo','MarkerFaceColor','b','MarkerSize',8);
end


% destination node
destination = find(adjC(social,:));
h4 = plot3(Coordinate(destination,1),Coordinate(destination,2),Coordinate(destination,3),'s','MarkerEdgeColor',[0.4660 0.6740 0.1880],'MarkerSize',16);
hold on;
plot3([Coordinate(social,1), Coordinate(destination,1)],...
    [Coordinate(social,2), Coordinate(destination,2)],...
    [Coordinate(social,3), Coordinate(destination,3)],'-','Color',[0.4660 0.6740 0.1880],'LineWidth',2);
hold on;

subplot(1,2,2);
plotVisualBasis(Coordinate, r);

% source node
plot3(Coordinate(normal,1),Coordinate(normal,2),Coordinate(normal,3),'rp','MarkerFaceColor','r','MarkerSize',16);
hold on;

% friendGroup of source node
friendGroup = find(adjA(normal,:));
for i=1:length(friendGroup)
    plot3(Coordinate(friendGroup(i),1),Coordinate(friendGroup(i),2),Coordinate(friendGroup(i),3),'bo','MarkerSize',8);
    plot3([Coordinate(normal,1), Coordinate(friendGroup(i),1)],...
        [Coordinate(normal,2), Coordinate(friendGroup(i),2)],...
        [Coordinate(normal,3), Coordinate(friendGroup(i),3)],'-','Color',[0.8 0.8 0.75])
    hold on;
end

% active nodes of friendGroup
activeNodes = find(adjB(normal,:));
for i=1:length(activeNodes)
    plot3(Coordinate(activeNodes(i),1),Coordinate(activeNodes(i),2),Coordinate(activeNodes(i),3),'bo','MarkerFaceColor','b','MarkerSize',8);
end


% destination node
destination = find(adjC(normal,:));
plot3(Coordinate(destination,1),Coordinate(destination,2),Coordinate(destination,3),'s','MarkerEdgeColor',[0.4660 0.6740 0.1880],'MarkerSize',16);
hold on;
plot3([Coordinate(normal,1), Coordinate(destination,1)],...
    [Coordinate(normal,2), Coordinate(destination,2)],...
    [Coordinate(normal,3), Coordinate(destination,3)],'-','Color',[0.4660 0.6740 0.1880],'LineWidth',2);
hold on;


lgd = legend([h h1 h2 h3 h4],'节点','源节点','源节点社交群组',...
    '群组内活跃节点','目的节点','Orientation','horizontal','Location','southoutside');






