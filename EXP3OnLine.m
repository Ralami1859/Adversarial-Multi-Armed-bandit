%--------------------------------------------------------------------------------------------------------
%%                                            Define the environment
function gainEXP3P = Exp3P(environment, gamma)

% environment: Matrix of size Horizon x NbrArms

[Horizon, NbrArms] = size(environment);

if nargin == 1;
    gamma = 0.05; % Exploration Rate
end

%---------------------------------------------------------------------------------------------------
%%                                            INITIALIZATION
%--------------------------------------------------------------------------------------------------

[w, gainEXP3] = EXP3_Initialize(K); % Initialize the vector weight w

%---------------------------------------------------------------------------------------------------
%%                                            INTERACTION
%--------------------------------------------------------------------------------------------------

for t = 1:Horizon;
    [ArmToPlay, p] = EXP3_RecommendArm(w, gamma);
    reward = rand() < BernoulliMeansMatrix(t,ArmToPlay);
    [w, gainEXP3] = EXP3_ReceiveReward(w, p, reward, K, gamma, ArmToPlay, gainEXP3);
end


            

                 
                 
                 
                 
                 
                 
                 
                 