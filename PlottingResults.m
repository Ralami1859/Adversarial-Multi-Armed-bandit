function PlottingResults(gain, titleStr)

gain = cumsum(gain); %Cumulate gain

figure
plot(gain)
title(titleStr)
xlabel('Time step')
ylabel('Cumulative gain')


