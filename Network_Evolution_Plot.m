function [] =  Network_Evolution_Plot(adjA, adjB, adjC)
    global Coordinate r;
    subplot(1,3,1);
    plotVisualBasis(Coordinate, r);
    dgplot3(adjA, Coordinate);
    title('(a) �罻��ϵ');

    subplot(1,3,2);
    plotVisualBasis(Coordinate, r);
    dgplot3(adjB, Coordinate);
    title('(b) ��Ծ�ڵ��ϵ');

    subplot(1,3,3);
    plotVisualBasis(Coordinate, r);
    dgplot3(adjC, Coordinate);
    title('(c) ����ͨ������');
end