#plot original time series with seasonal component
plot.ts(AirPassengers, nc = 12) #how many months -- works without nc component

APsma<- SMA(AirPassengers, n = 12) #take smooth moving average
plot.ts(APsma) #If you don't do as .ts it will show points instead of a line

#pull appart sources of variation
APBD <- decompose(AirPassengers, type = "multiplicative") #multiplicative because seasonal oscillation appears to be growing has significanly less variation than additive
plot(APBD) #shows original, trend, error, and seasonal component

#graph of trends (includes error but not seasonal changes)
SeasonAdjusted <- (AirPassengers/APBD$seasonal) #Because it's multiplicative divide... if it were additive you would multiply
plot.ts(SeasonAdjusted)
