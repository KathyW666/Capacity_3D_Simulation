function [res, sumFlows] = isAdHocFlow(flowHop, L)
    res = flowHop;
    res(res > L) = 0;
    flows = res;
    flows(res > 0) = 1;
    sumFlows = sum(flows);
    