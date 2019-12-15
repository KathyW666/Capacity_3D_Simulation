function [] =  Network_Evolution_Plot(adjA, adjB, adjC)
    global Coordinate r;
    subplot(1,3,1);
    plotVisualBasis(Coordinate, r);
    dgplot3(adjA, Coordinate);
    title('(a) 社交关系');

    subplot(1,3,2);
    plotVisualBasis(Coordinate, r);
    dgplot3(adjB, Coordinate);
    title('(b) 活跃节点关系');

    subplot(1,3,3);
    plotVisualBasis(Coordinate, r);
    dgplot3(adjC, Coordinate);
    title('(c) 最终通信网络');
end