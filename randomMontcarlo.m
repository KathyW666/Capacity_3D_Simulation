function [res] = randomMontcarlo(pr, flag, para)
if (flag*unifrnd(0,1) <= flag*pr^-para)
    res = 1;
else
    res = 0;
end
