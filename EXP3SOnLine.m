

function gainEXP3S = Exp3S(environment, gamma)

% environment 

[K, Horizon] = size(environment);

if nargin == 1;
    gamma = 0.05; % Exploration Rate
end

%---------------------------------------------------------------------------------------------------
%%                                            INITIALIZATION
%--------------------------------------------------------------------------------------------------

[w, gainEXP3S] = EXP3_Initialize(K);

%---------------------------------------------------------------------------------------------------
%%                                            INTERACTION
%--------------------------------------------------------------------------------------------------

for t = 1:Horizon;
    [ArmToPlay, p] = EXP3_RecommendArm(w, gamma);
    reward = rand() < BernoulliMeansMatrix(t,ArmToPlay);
    [w, gainEXP3S] = EXP3S_ReceiveReward(w, p, reward, K, Horizon, gamma, ArmToPlay, gainEXP3S);
end

            

                 
                 
                 
                 
                 
                 
                 
                 