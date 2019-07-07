function gainEXP3 = Exp3(environment, gamma)

% environment: Matrix of size Horizon x NbrArms

[Horizon, NbrArms] = size(environment);

if nargin == 1;
    gamma = 0.05; % Exploration Rate
end

%---------------------------------------------------------------------------------------------------
%%                                            INITIALIZATION
%--------------------------------------------------------------------------------------------------

[w, gainEXP3] = EXP3_Initialize(NbrArms); % Initialize the vector weight w

%---------------------------------------------------------------------------------------------------
%%                                            INTERACTION
%--------------------------------------------------------------------------------------------------

for t = 1:Horizon;
    [ArmToPlay, p] = EXP3_RecommendArm(w, gamma);
    reward = rand() < environment(t,ArmToPlay);
    [w, gainEXP3] = EXP3_ReceiveReward(w, p, reward, NbrArms, gamma, ArmToPlay, gainEXP3);
end


            

                 
                 
                 
                 
                 
                 
                 
                 