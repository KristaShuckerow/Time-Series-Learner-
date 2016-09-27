plot.ts(nhtemp)
EXPsmoothed <- HoltWinters(nhtemp, beta = F, gamma = F)
EXPsmoothed
plot(EXPsmoothed)

#i picked the nhtemp because it goes by YEARLY average removing seasonality
#and the plot.ts() fro the data appered to center around a normal point. 

#Compared to smoothed via moving average
library("TTR")
smoothed <- SMA(nhtemp)
smoothed
plot(smoothed)
