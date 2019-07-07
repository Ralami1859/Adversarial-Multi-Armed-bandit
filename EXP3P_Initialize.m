function [w, gainEXP3P] = EXP3P_Initialize(K, gamma, Horizon)
    alpha = 1/Horizon;
     w = ones(1,K)*exp(alpha*gamma/3*sqrt(Horizon/K));
    gainEXP3P = [];
end