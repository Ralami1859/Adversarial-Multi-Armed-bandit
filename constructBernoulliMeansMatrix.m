function res = constructBernoulliMeansMatrix(BernoulliMeansMatrix, Horizon)
    [NbrPeriode, K] = size(BernoulliMeansMatrix);
    TimePeriode = Horizon/NbrPeriode;
    res = zeros(Horizon,K);
    
    for k = 1:K;
        vect = [];
        for periode = 1:NbrPeriode
            vect = [vect BernoulliMeansMatrix(periode,k)*ones(1,TimePeriode)];
        end
        res(:,k) = vect';
    end
end