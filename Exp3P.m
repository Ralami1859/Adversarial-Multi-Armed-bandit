
%% Inputs: 
% environment: Matrix of size Horizon x NbrArms
% gamma: exploration rate (Default value = 0.05)
%% Outputs:
% gainEXP3P: vector of observations for each time step

function gainEXP3P = Exp3P(environment, gamma)

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
    reward = rand() < environment(t,ArmToPlay);
    [w, gainEXP3P] = EXP3P_ReceiveReward(w, p, reward, NbrArms, Horizon, gamma, ArmToPlay, gainEXP3P);
end
        

                
                 
                 
                 
                 
                 
                 
                 