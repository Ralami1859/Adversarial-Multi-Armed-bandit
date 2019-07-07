function [w, gainEXP3] = EXP3_ReceiveReward(w, p,reward, K, gamma, ArmChosen, gainEXP3)
    if((reward <0) + (reward >1) ~= 0)
        error('Reward must be between 0 and 1');
    end
    gainEXP3 = [gainEXP3 reward];
    reward = reward/p(ArmChosen);
    w(ArmChosen) = w(ArmChosen)*exp(gamma*reward/K);
    w = w/sum(w);   
end