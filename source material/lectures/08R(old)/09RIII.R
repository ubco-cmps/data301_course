### R code from vignette source '09RIII.Rnw'
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
### code chunk number 2: 09RIII.Rnw:209-218
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
### code chunk number 3: 09RIII.Rnw:350-370
###################################################
xmin <- -3.5
ntobs <- qt(0.025, df=29)
ptobs <- qt(0.975, df=29)
car_data <- read.csv("car_data.csv")
n <- nrow(car_data)
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


###################################################
### code chunk number 4: 09RIII.Rnw:378-382
###################################################
this <- t.test(x=car_data$km.L,
        alternative=c("two.sided"), mu=10)
high = this$statistic*sd(car_data$km.L)/sqrt(n) + 10
low = this$statistic*sd(car_data$km.L)/sqrt(n) - 10


###################################################
### code chunk number 5: 09RIII.Rnw:393-421
###################################################
par(mfrow=c(1,2))

xmin <- -3.5
ntobs <- qt(0.025, df=29)
ptobs <- qt(0.975, df=29)
car_data <- read.csv("car_data.csv")
n <- nrow(car_data)
cord.x <- c(xmin,seq(xmin,ntobs,0.01),ntobs)
cord.y <- c(0,dt(seq(xmin,ntobs,0.01), df=n-1),0)

# Make a curve
curve(dt(x,df=n-1), xlim=c(xmin,abs(xmin)), xlab='Density',
      main="Lower-tailed alternative", ylab="")

# Add the shaded area.
polygon(cord.x,cord.y,col=2)
#legend("topright", fill="skyblue", legend = "p-value")


# Make a curve
curve(dt(x,df=n-1), xlim=c(xmin,abs(xmin)), xlab='Density',
      main="Upper-tailed alternative", ylab="")


# Create data for the area to shade in the upper tail
cord.x <- c(ptobs,seq(ptobs, abs(xmin),0.01),abs(xmin))
cord.y <- c(0,dt(seq(ptobs,abs(xmin),0.01), df=n-1),0)
polygon(cord.x,cord.y,col=2)


###################################################
### code chunk number 6: carttest (eval = FALSE)
###################################################
## car_data <- read.csv("car_data.csv")# read in the data
## t.test(x=car_data$km.L,             # sample mileage
##        alternative=c("two.sided"),  # two-side H_A
##        mu=10) # set the hypothesized value equal to 10. 
##        
## # since a two-sided test is the default, we could have typed:
## t.test(x=car_data$km.L, mu=10)


###################################################
### code chunk number 7: 09RIII.Rnw:477-479
###################################################
car_data <- read.csv("car_data.csv")# read in the data
t.test(x=car_data$km.L, mu=10)


###################################################
### code chunk number 8: 09RIII.Rnw:536-538
###################################################
car <- car_data
tsum <- t.test(x=car_data$km.L, alternative=c("two.sided"),mu=10)


###################################################
### code chunk number 9: 09RIII.Rnw:559-584
###################################################
# Create data for the area to shade in the lower tail
tobs <- tsum$statistic
if (tobs<0){
  ntobs <- tobs
  ptobs <- abs(tobs)
} else {
  ptobs <- tobs
  ntobs <- (-1)*tobs
}
xmin <- -3.5
cord.x <- c(xmin,seq(xmin,ntobs,0.01),ntobs)
cord.y <- c(0,dt(seq(xmin,ntobs,0.01), df=n-1),0)

# Make a curve
curve(dt(x,df=n-1), xlim=c(xmin,abs(xmin)), xlab='Density',
      main="Upper-tailed alternative", ylab="'")

# Add the shaded area.
polygon(cord.x,cord.y,col='skyblue')
legend("topright", fill="skyblue", legend = "p-value")

# Create data for the area to shade in the upper tail
cord.x <- c(ptobs,seq(ptobs, abs(xmin),0.01),abs(xmin))
cord.y <- c(0,dt(seq(ptobs,abs(xmin),0.01), df=n-1),0)
polygon(cord.x,cord.y,col='skyblue')


###################################################
### code chunk number 10: 09RIII.Rnw:824-826
###################################################
head(beaver2,3)
tail(beaver2,3)


###################################################
### code chunk number 11: beaver (eval = FALSE)
###################################################
## beaverA <- subset(beaver2, activ==1) #active beavers
## beaverB <- subset(beaver2, activ==0) #non-active beavers
## t.test(beaverA$temp, beaverB$temp)


###################################################
### code chunk number 12: 09RIII.Rnw:846-853 (eval = FALSE)
###################################################
## t.test(beaverA$temp, # temperatures of 62 active beavers
##        beaverB$temp, # temps of 38 inactive beavers
##        alternative = "two.sided", # H_1: mu_A - mu_B != d_0
##        mu = 0,                    # default d_0 = 0
##        paired = FALSE,            # default (data unpaired)
##        conf.level = 0.95          # default (ie. alpha = 5%)
##        )


###################################################
### code chunk number 13: 09RIII.Rnw:860-861
###################################################
beaverA <- subset(beaver2, activ==1) #active beavers
beaverB <- subset(beaver2, activ==0) #non-active beavers
t.test(beaverA$temp, beaverB$temp)


###################################################
### code chunk number 14: 09RIII.Rnw:867-868 (eval = FALSE)
###################################################
## t.test(temp~activ, data=beaver2)


###################################################
### code chunk number 15: 09RIII.Rnw:876-877
###################################################
(bsum <- t.test(temp~activ, data=beaver2))


###################################################
### code chunk number 16: 09RIII.Rnw:900-902
###################################################
# places inactive beavers in the first argument: 
t.test(beaverB$temp,beaverA$temp)


###################################################
### code chunk number 17: 09RIII.Rnw:1072-1075
###################################################
athlete = read.csv("athlete.csv", header=TRUE)
head(athlete,3)
tail(athlete,3)


###################################################
### code chunk number 18: 09RIII.Rnw:1082-1087
###################################################
noTrain <- subset(athlete, Training==0)
Train <- subset(athlete, Training==1)
# these are performed on the same athletes!
noTrain$Athlete
Train$Athlete


###################################################
### code chunk number 19: 09RIII.Rnw:1095-1096
###################################################
t.test(Time~Training, data=athlete, paired=TRUE)


###################################################
### code chunk number 20: 09RIII.Rnw:1110-1111
###################################################
t.test(noTrain$Time, Train$Time, data=athlete, paired=TRUE)


###################################################
### code chunk number 21: 09RIII.Rnw:1118-1120
###################################################
ds <- noTrain$Time - Train$Time
t.test(ds)


###################################################
### code chunk number 22: 09RIII.Rnw:1142-1143
###################################################
asum <- t.test(Time~Training, data=athlete, paired=TRUE)


###################################################
### code chunk number 23: 09RIII.Rnw:1154-1155
###################################################
t.test(Time~Training, data=athlete)


###################################################
### code chunk number 24: 09RIII.Rnw:1300-1302
###################################################
model <- lm(km.L~Litres+Distance, data=car_data)
model


###################################################
### code chunk number 25: 09RIII.Rnw:1309-1310
###################################################
model$coefficients


###################################################
### code chunk number 26: 09RIII.Rnw:1319-1323
###################################################
e <- residuals(model)
head(e)
smod <- summary(model)
smod$r.squared


###################################################
### code chunk number 27: 09RIII.Rnw:1350-1353 (eval = FALSE)
###################################################
## f <- '09RIII.Rnw'
## knitr::purl(f)
## Stangle(f)


