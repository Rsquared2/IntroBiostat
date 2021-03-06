library(openintro)
data(COL)
#data(run10Samp)
data(run10)
set.seed(19); temp <- sample(nrow(run10), 100); run10Samp <- run10[temp,c("time", "age", "gender", "state")]; run10Samp$time <- run10Samp$time + 0.09
xBars <- cumsum(run10Samp$time)/(1:100)
save(run10Samp, file="run10Samp.rda")


myPDF('netTimeRunningMean.pdf', 5.5*0.95, 2.8*0.95, mar=c(3.3,4,1,1))

plot(xBars, type='l', axes=FALSE, xlab='', ylab='Running mean (minutes)', col=COL[1], lwd=2, ylim=c(85, 100))
axis(1, at=seq(0,100,25))
axis(2, at=seq(80, 110, 5))
mtext("Sample size", 1, 2)

dev.off()

mean(run10Samp$time)
sd(run10Samp$time)
