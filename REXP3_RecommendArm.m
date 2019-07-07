function [ArmToPlay, p, w] = REXP3_RecommendArm(w, gamma, t, batchSize)
    K = length(w);
    if t/batchSize - floor(t/batchSize) == 0
        w =  ones(1,K);
    end
    p = (1-gamma)*w/sum(w) + gamma/K;
    Proba = cumsum(p);
    ArmToPlay = Proba > rand();
    ArmToPlay = find(ArmToPlay == 1,1,'first');
end