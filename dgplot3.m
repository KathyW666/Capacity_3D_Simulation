function h = dgplot3(A, xyz, varargin)
 % If no arguments given, then run buckminster sphere example
    if nargin == 0
        [A, xyz] = bucky;
    end

    % If only one argument given, throw error.
    if nargin == 1
        error('Please provide an adjacency matrix and coordinate array');
    end
    
    % Returns i and j, lists of connected nodes
    [s,d] = find(A);
    
    % Extact 
    start = xyz(s,:);
    desti = xyz(d,:);
    
    % If only two arguments, then plot as is
    if nargin == 0 || nargin == 2
        h = arrow3d(start,desti,10,'line',0.1,3);
    end