classdef Network_3D
    properties
        N;              % The total number of nodes
        Alpha;          % Social concentration factor
        Beta;           % Communication activity factor
        Gamma;          % Scale-free clustering factor
    end
    methods
        function obj = Network_3D(n, alpha, beta, gamma)
            if(nargin > 0 && nargin == 4)
                if rem(n,1) == 0
                    obj.N = n;
                else
                    error('N must be integer')
                end
                if (alpha > 0 && isnumeric(alpha))
                    obj.Alpha = alpha;
                else
                    error('Alpha should be positive & numberic')
                end
                if (beta > 0 && isnumeric(beta))
                    obj.Beta = beta;
                else
                    error('Beta should be positive & numberic')
                end
                if (gamma > 0 && isnumeric(gamma))
                    obj.Gamma = gamma;
                else
                    error('Gamma should be positive & numberic')
                end               
            else
                error('Invalid input args! Standard input args: n, alpha, beta, gamma')
            end
        end
    end        
end