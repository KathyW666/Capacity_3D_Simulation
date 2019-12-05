function res = isTargetNew(Matrix, para, varargin)
res = zeros(size(Matrix));
ref = Matrix;
flag = 1;
single = false;
if(~isempty(varargin) && nargin == 5)
    ref = varargin{3};
    flag = varargin{1};
    single = varargin{2};
elseif(nargin~=2)
    error('Invalid input');
end

for i=1:length(Matrix)
    vec = Matrix(i,:);
    if (~single)
        ref = vec;
    end
    for j=1:length(vec)
        if (vec(j) == 0 || vec(j) == 1)
            continue;
        end
        res(i,j) = randomMontcarlo(ref(j), flag, para);
        if (single)
            break;
        end
    end
end

