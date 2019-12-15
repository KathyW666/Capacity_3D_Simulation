function plotVisualBasis(Coordinate, r)
    % plot all nodes
    plot3(Coordinate(:,1),Coordinate(:,2),Coordinate(:,3),'xr');
    hold on;
    axis([0 1 0 1 0 1]);
    view(-35,27)
    grid on;
    hold on;

    % plot the grid
    for i=0:floor(1/r)
        X = [i*r,i*r]; Y = [0,1]; Z = [0,1];
        for j=0:floor(1/r)
            Yc = [j*r,j*r]; Zc = [j*r,j*r];
            line(X,Y,Zc,'Color',[192/255 192/255 192/255],'LineStyle','--','LineWidth',1.5);
            line(Y,X,Zc,'Color',[192/255 192/255 192/255],'LineStyle','--','LineWidth',1.5);
            line(X,Yc,Z,'Color',[192/255 192/255 192/255],'LineStyle','--','LineWidth',1.5);
            line(Z,Yc,X,'Color',[192/255 192/255 192/255],'LineStyle','--','LineWidth',1.5);        
            hold on;
        end
    end
end