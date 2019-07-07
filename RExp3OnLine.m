function gainEXP3P = Exp3P(environment, batchSize, gamma)



gamma = 0.05; % Exploration Rate

%---------------------------------------------------------------------------------------------------
%%                                            INITIALIZATION
%--------------------------------------------------------------------------------------------------
[w, gainREXP3] = EXP3_Initialize(NbrArms);

%---------------------------------------------------------------------------------------------------
%%                                            INTERACTION
%--------------------------------------------------------------------------------------------------

for t = 1:Horizon;
    [ArmToPlay, p, w] = REXP3_RecommendArm(w, gamma, t, batchSize); % Arm Recommanded by REXP3
    reward = rand() < BernoulliMeansMatrix(t,ArmToPlay); % Play the recommanded arm
    [w, gainREXP3] = EXP3_ReceiveReward(w, p, reward, NbrArms, gamma, ArmToPlay, gainREXP3); % Update the chosen arm
end
        
                 
                 
                 
                 
                 
                 
                 
                 