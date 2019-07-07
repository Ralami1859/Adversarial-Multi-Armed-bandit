
%% Inputs: 
% environment: Matrix of size Horizon x NbrArms
% batchSize: Number of time steps before restart
% gamma: exploration rate (Default value = 0.05)
%% Outputs:
% gainREXP3: vector of observations for each time step


function gainREXP3 = RExp3(environment, batchSize, gamma)

[Horizon, NbrArms] = size(environment);

if nargin == 2;
    gamma = 0.05; % Exploration Rate
end
%---------------------------------------------------------------------------------------------------
%%                                            INITIALIZATION
%--------------------------------------------------------------------------------------------------
[w, gainREXP3] = EXP3_Initialize(NbrArms);

%---------------------------------------------------------------------------------------------------
%%                                            INTERACTION
%--------------------------------------------------------------------------------------------------

for t = 1:Horizon;
    [ArmToPlay, p, w] = REXP3_RecommendArm(w, gamma, t, batchSize); % Arm Recommanded by REXP3
    reward = rand() < environment(t,ArmToPlay); % Play the recommanded arm
    [w, gainREXP3] = EXP3_ReceiveReward(w, p, reward, NbrArms, gamma, ArmToPlay, gainREXP3); % Update the chosen arm
end
        
                 
                 
                 
                 
                 
                 
                 
                 