function [w, gainEXP3S] = EXP3S_ReceiveReward(w, p,reward, K, Horizon, gamma, ArmChosen, gainEXP3S)
    if((reward <0) + (reward >1) ~= 0)
        error('Reward must be between 0 and 1');
    end
    alpha = 1/Horizon;
    gainEXP3S = [gainEXP3S reward];
    reward = reward/p(ArmChosen);
    w = w + exp(1)*alpha/K*sum(w);
    w(ArmChosen) = w(ArmChosen).*exp(gamma.*reward/K);
    w = w/sum(w);   
end