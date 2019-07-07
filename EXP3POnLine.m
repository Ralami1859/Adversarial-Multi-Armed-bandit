function gainEXP3P = Exp3P(environment, gamma)

% environment: Matrix of size Horizon x NbrArms

[Horizon, NbrArms] = size(environment);

if nargin == 1;
    gamma = 0.05; % Exploration Rate
end



%---------------------------------------------------------------------------------------------------
%%                                            INITIALIZATION
%--------------------------------------------------------------------------------------------------

[w, gainEXP3P] = EXP3P_Initialize(NbrArms, gamma, Horizon);

%---------------------------------------------------------------------------------------------------
%%                                            INTERACTION
%--------------------------------------------------------------------------------------------------

for t = 1:Horizon;
    [ArmToPlay, p] = EXP3_RecommendArm(w, gamma);
    reward = rand() < BernoulliMeansMatrix(t,ArmToPlay);
    [w, gainEXP3P] = EXP3P_ReceiveReward(w, p, reward, NbrArms, Horizon, gamma, ArmToPlay, gainEXP3P);
end
        

%---------------------------------------------------------------------------------------------------
%%                                            PLOTTING THE RESULTS
%--------------------------------------------------------------------------------------------------

                
                 
                 
                 
                 
                 
                 
                 