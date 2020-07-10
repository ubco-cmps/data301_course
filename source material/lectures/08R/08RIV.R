### R code from vignette source '08RIV.Rnw'
### Encoding: UTF-8

###################################################
### code chunk number 1: setup
###################################################
library(knitr)
knit_hooks$set(small.mar = function(before, options, envir) {
  if (before) par(mar = c(5.1, 4.1, 2.1, 2.1))  # smaller margin on top 
})
opts_chunk$set(fig.path='figure/beamer-',fig.align='center',fig.show='hold',size='footnotesize', small.mar=TRUE)
# opts_chunk$set(fig.path='figure/beamer-',fig.align='center',fig.show='hold',size='footnotesize')


###################################################
### code chunk number 2: 08RIV.Rnw:227-236
###################################################
curve(dnorm(x, mean=0, sd=1), from=-6, to =6, ylab="", xaxt='n',yaxt='n', xlab = "", main="Normal Distribution")
curve(dnorm(x, mean=0, sd=2), add=TRUE, col=2)
curve(dnorm(x, mean=0, sd=3), add=TRUE, col=3)
legend("topright", legend = c(
  expression(sigma == 1),
  expression(sigma == 2),
  expression(sigma == 3)),
  col=c(1,2,3),lwd=1)
axis(side =1, at=0, labels = expression(mu))


###################################################
### code chunk number 3: 08RIV.Rnw:358-367
###################################################
# n <- 4
xmin <- -3.5
# curve(dt(x,df=n-1), xlim=c(xmin,abs(xmin)), xlab='Density', ylab="")
curve(dt(x,df=100-1), xlim=c(xmin,abs(xmin)), xlab='Density', ylab="")
# curve(dt(x,df=50), add =TRUE, col =3)
curve(dt(x,df=10-1), add =TRUE, col =2)
curve(dt(x,df=5-1), add =TRUE, col =3)
curve(dt(x,df=3-1), add =TRUE, col =4)
legend("topright",c("n=100", "n=10", "n=5", "n=3"), lwd=1, col=c(1,2,3,4))


###################################################
### code chunk number 4: 08RIV.Rnw:376-377
###################################################
car_data <- read.csv("data/car_data.csv")


###################################################
### code chunk number 5: hval
###################################################
mu0 = 10 # hypothesize value


###################################################
### code chunk number 6: tstat
###################################################
n = nrow(car_data)
tobs = (mean(car_data$km.L)- mu0)/(sd(car_data$km.L)/sqrt(n))


###################################################
### code chunk number 7: 08RIV.Rnw:435-438
###################################################
mu0 = 10 # hypothesize value
n = nrow(car_data)
tobs = (mean(car_data$km.L)- mu0)/(sd(car_data$km.L)/sqrt(n))
tobs


###################################################
### code chunk number 8: 08RIV.Rnw:465-487
###################################################
xmin <- -4
ntobs <- -abs(tobs) # qt(0.025, df=n-1)
ptobs <- abs(tobs) # qt(0.975, df=n-1)
cord.x <- c(xmin,seq(xmin,ntobs,0.01),ntobs)
cord.y <- c(0,dt(seq(xmin,ntobs,0.01), df=n-1),0)

# Make a curve
curve(dt(x,df=n-1), xlim=c(xmin,abs(xmin)), xlab='Density',
      main="Two-sided alternative", ylab="")

# Add the shaded area.
polygon(cord.x,cord.y,col=2)
#legend("topright", fill="skyblue", legend = "p-value")

# Create data for the area to shade in the upper tail
cord.x <- c(ptobs,seq(ptobs, abs(xmin),0.01),abs(xmin))
cord.y <- c(0,dt(seq(ptobs,abs(xmin),0.01), df=n-1),0)
polygon(cord.x,cord.y,col=2)

# legend
pval = 2*pt(abs(tobs), df = n-1, lower.tail = FALSE)
legend("topright", paste("p value = ",round(pval,4)))


###################################################
### code chunk number 9: 08RIV.Rnw:495-510
###################################################
xmin <- -4
ntobs <- tobs # qt(0.025, df=n-1)
cord.x <- c(xmin,seq(xmin,ntobs,0.01),ntobs)
cord.y <- c(0,dt(seq(xmin,ntobs,0.01), df=n-1),0)

# Make a curve
curve(dt(x,df=n-1), xlim=c(xmin,abs(xmin)), xlab='Density',
      main="One-sided (lower tailed) alternative", ylab="")

# Add the shaded area.
polygon(cord.x,cord.y,col=2)
#legend("topright", fill="skyblue", legend = "p-value")

# legend
legend("topright", paste("p value = ",round(pt(tobs, df = n-1, lower.tail = TRUE),4)))


###################################################
### code chunk number 10: 08RIV.Rnw:519-534
###################################################
xmin <- -4
ptobs <- tobs # qt(0.975, df=n-1)

# Make a curve
curve(dt(x,df=n-1), xlim=c(xmin,abs(xmin)), xlab='Density',
      main="Two-sided alternative", ylab="")

# Create data for the area to shade in the upper tail
cord.x <- c(ptobs,seq(ptobs, abs(xmin),0.01),abs(xmin))
cord.y <- c(0,dt(seq(ptobs,abs(xmin),0.01), df=n-1),0)
polygon(cord.x,cord.y,col=2)

# legend
legend("topright", paste("p value = ",round(pt(tobs, df = n-1, lower.tail = FALSE)
        ,4)))


###################################################
### code chunk number 11: carttest (eval = FALSE)
###################################################
## car_data <- read.csv("data/car_data.csv")# read in the data
## mu0 = 10 # hypothesize value
## t.test(x=car_data$km.L,             # sample mileage
##        alternative=c("two.sided"),  # two-side H_A
##        mu=mu0) # set the hypothesized value mu0 
## # since a two-sided test is the default, we could have typed:
## t.test(x=car_data$km.L, mu=mu0)


###################################################
### code chunk number 12: 08RIV.Rnw:707-714
###################################################
car_data <- read.csv("data/car_data.csv")# read in the data
tsum <- t.test(x=car_data$km.L, alternative=c("two.sided"),mu=mu0)
tsum

n = nrow(car_data)
(tobs = (mean(car_data$km.L)- mu0)/(sd(car_data$km.L)/n))
car <- car_data


###################################################
### code chunk number 13: 08RIV.Rnw:858-860
###################################################
head(beaver2,3)
tail(beaver2,3)


###################################################
### code chunk number 14: beaver (eval = FALSE)
###################################################
## beaverA <- subset(beaver2, activ==1) #active beavers
## beaverB <- subset(beaver2, activ==0) #non-active beavers
## t.test(beaverA$temp, beaverB$temp)


###################################################
### code chunk number 15: 08RIV.Rnw:880-887 (eval = FALSE)
###################################################
## t.test(beaverA$temp, # temperatures of 62 active beavers
##        beaverB$temp, # temps of 38 inactive beavers
##        alternative = "two.sided", # H_1: mu_A - mu_B != d_0
##        mu = 0,                    # default d_0 = 0
##        paired = FALSE,            # default (data unpaired)
##        conf.level = 0.95          # default (ie. alpha = 5%)
##        )


###################################################
### code chunk number 16: 08RIV.Rnw:894-895
###################################################
beaverA <- subset(beaver2, activ==1) #active beavers
beaverB <- subset(beaver2, activ==0) #non-active beavers
t.test(beaverA$temp, beaverB$temp)


###################################################
### code chunk number 17: 08RIV.Rnw:901-902 (eval = FALSE)
###################################################
## t.test(temp~activ, data=beaver2)


###################################################
### code chunk number 18: 08RIV.Rnw:910-911
###################################################
(bsum <- t.test(temp~activ, data=beaver2))


###################################################
### code chunk number 19: 08RIV.Rnw:934-936
###################################################
# places inactive beavers in the first argument: 
(beavertest <- t.test(beaverB$temp,beaverA$temp))


###################################################
### code chunk number 20: 08RIV.Rnw:959-960
###################################################
beavertest$p.value # to see the exact p-value


###################################################
### code chunk number 21: 08RIV.Rnw:1040-1043
###################################################
athlete = read.csv("data/athlete.csv", header=TRUE)
head(athlete,3)
tail(athlete,3)


###################################################
### code chunk number 22: 08RIV.Rnw:1050-1055
###################################################
noTrain <- subset(athlete, Training==0)
Train <- subset(athlete, Training==1)
# these are performed on the same athletes!
noTrain$Athlete
Train$Athlete


###################################################
### code chunk number 23: 08RIV.Rnw:1063-1064
###################################################
t.test(Time~Training, data=athlete, paired=TRUE)


###################################################
### code chunk number 24: 08RIV.Rnw:1078-1079
###################################################
t.test(noTrain$Time, Train$Time, data=athlete, paired=TRUE)


###################################################
### code chunk number 25: 08RIV.Rnw:1086-1088
###################################################
ds <- noTrain$Time - Train$Time
t.test(ds)


###################################################
### code chunk number 26: 08RIV.Rnw:1110-1111
###################################################
asum <- t.test(Time~Training, data=athlete, paired=TRUE)


###################################################
### code chunk number 27: 08RIV.Rnw:1122-1123
###################################################
t.test(Time~Training, data=athlete)


###################################################
### code chunk number 28: 08RIV.Rnw:1428-1430
###################################################
model <- lm(km.L~Litres+Distance, data=car_data)
model


###################################################
### code chunk number 29: 08RIV.Rnw:1437-1438
###################################################
model$coefficients


###################################################
### code chunk number 30: 08RIV.Rnw:1447-1451
###################################################
e <- residuals(model)
head(e)
smod <- summary(model)
smod$r.squared


###################################################
### code chunk number 31: 08RIV.Rnw:1457-1459
###################################################
par(mfrow=c(2,2)); # divides plot window into a 2 x 2 matrix
plot(model) # some useful diagnostic plots:


###################################################
### code chunk number 32: 08RIV.Rnw:1485-1488
###################################################
f <- '08RIV.Rnw'
knitr::purl(f)
Stangle(f)


