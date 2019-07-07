function [w, gainEXP3P] = EXP3P_ReceiveReward(w, p,reward, K, Horizon, gamma, ArmChosen, gainEXP3P)
    if((reward <0) + (reward >1) ~= 0)
        error('Reward must be between 0 and 1');
    end
    alpha = 1/Horizon;
    gainEXP3P = [gainEXP3P reward];
    reward = reward/p(ArmChosen);
    w = w.*exp(gamma/(3*K).*(reward + alpha./(p.*(sqrt(K*Horizon)))));
    w = w/sum(w);   
end