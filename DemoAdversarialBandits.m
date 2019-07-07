%--------------------------------------------------------------------------------------------------------
%%                                            Define the environment
%-------------------------------------------------------------------------------------------------------

BernoulliMeansMatrix = [0.9 0.1 0.1;0.2 0.5 0.9; 0.1 0.9 0.2];
Horizon = 900; %Overall number of interaction with the environment
environment= constructBernoulliMeansMatrix(BernoulliMeansMatrix, Horizon); 
% environment = Matrix of size Horizon x NbrArms
batchSize = 300;
%---------------------------------------------------------------
%%           Launching the adversarial bandits
%---------------------------------------------------------------
gainEXP3  = Exp3(environment);
gainEXP3S = Exp3S(environment);
gainEXP3P = Exp3P(environment);
gainREXP3 = RExp3(environment, batchSize);
%---------------------------------------------------------------------------------------------------
%%                                            PLOTTING THE RESULTS
%--------------------------------------------------------------------------------------------------
PlottingResults(gainREXP3, 'REXP3')                 
PlottingResults(gainEXP3, 'EXP3')   
PlottingResults(gainEXP3S, 'EXP3S')  
PlottingResults(gainEXP3P, 'EXP3P') 
