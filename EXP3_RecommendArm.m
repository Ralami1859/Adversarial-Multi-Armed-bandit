function [ArmToPlay, p] = EXP3_RecommendArm(w, gamma)
    K = length(w);
    p = (1-gamma)*w/sum(w) + gamma/K;
    Proba = cumsum(p);
    ArmToPlay = Proba > rand();
    ArmToPlay = find(ArmToPlay == 1,1,'first');
end