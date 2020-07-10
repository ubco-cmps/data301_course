### R code from vignette source '08RIII.Rnw'
### Encoding: UTF-8

###################################################
### code chunk number 1: setup
###################################################
library(knitr)
opts_chunk$set(fig.path='figure/beamer-',fig.align='center',fig.show='hold',size='footnotesize')


###################################################
### code chunk number 2: 08RIII.Rnw:166-167
###################################################
set.seed(301)


###################################################
### code chunk number 3: 08RIII.Rnw:169-175 (eval = FALSE)
###################################################
## data1 = data.frame(x=runif(100),y=runif(100))
## data2 = data.frame(x=runif(100)+0.5,y=runif(100)+0.5)
## data = rbind(data1, data2)
## km = kmeans(data, centers=2)
## plot(data, col=km$cluster)
## points(km$centers, col="green", pch= 15, cex = 2)


###################################################
### code chunk number 4: 08RIII.Rnw:182-183
###################################################
set.seed(301)


###################################################
### code chunk number 5: 08RIII.Rnw:185-191
###################################################
data1 = data.frame(x=runif(100),y=runif(100))
data2 = data.frame(x=runif(100)+0.5,y=runif(100)+0.5)
data = rbind(data1, data2)
km = kmeans(data, centers=2)
plot(data, col=km$cluster)
points(km$centers, col="green", pch= 15, cex = 2)


###################################################
### code chunk number 6: 08RIII.Rnw:200-206
###################################################
x = c(5, 7, 9, 11, 13, 15); y = c(11, 14, 20, 24, 29, 31)
# stores the estimates of slope and y-intercept
fit = lm(y~x); class(fit) # of class "lm"
predict(fit) # calculates the predicted y's (for the x's used in input)
y.int = fit$coefficients[1] 
slope = fit$coefficients[2]


###################################################
### code chunk number 7: 08RIII.Rnw:212-216
###################################################
sfit <- summary(fit)
sfit$r.squared # R-squared value
sfit$residuals # residuals
sfit$coefficients # p-values/t-tests for parameter estimates


###################################################
### code chunk number 8: 08RIII.Rnw:223-225
###################################################
plot(x, y, main="Linear Regression Example")
abline(fit, col="blue")


###################################################
### code chunk number 9: 08RIII.Rnw:263-266
###################################################
x = runif(n=100) # 100 random numbers between 0 and 1
y = runif(n=100, min=0, max=5) # 100 random numbers between 0 and 5
plot(x,y)

# see example of 1D plot:
stripchart(x)
stripchart(y)

###################################################
### code chunk number 10: 08RIII.Rnw:283-285
###################################################
x = runif(n=100, min=1, max =10)
hist(x)

# # bad bin choice:
# hist(1:5, col="cornflowerblue")

###################################################
### code chunk number 11: 08RIII.Rnw:290-292
###################################################
x = runif(n=100, min=1, max =10)
hist(x, breaks = 40)


###################################################
### code chunk number 12: 08RIII.Rnw:326-327
###################################################
set.seed(256)


###################################################
### code chunk number 13: 08RIII.Rnw:329-331
###################################################
x <- rnorm(100) # generate 100 obs from a standard normal dist
boxplot(x)


###################################################
### code chunk number 14: 08RIII.Rnw:337-338
###################################################
boxplot(x, horizontal=TRUE)


###################################################
### code chunk number 15: 08RIII.Rnw:376-384 (eval = FALSE)
###################################################
## x5 = fivenum(x); names(x5) = c("min","q1","median","q3","max")
## boxplot(x)
## # Draw a red dashed line at Q1
## abline(h=x5["q1"], col=2, lty=2) 
## # Draw a green thick line at Q2 (the median)
## abline(h=x5["median"], col="green", lwd = 3) 
## # Draw a purple dotted line at Q3
## abline(h=x5["q3"], col="purple", lty = 3)


###################################################
### code chunk number 16: xboxplot
###################################################
x5 = fivenum(x)
names(x5) = c("min","q1","median","q3","max")
boxplot(x)
abline(h=x5["q1"], col="red", lty=2) # create a dashed line
abline(h=x5["median"], col="green", lwd = 3) # create a thicker line
abline(h=x5["q3"], col="purple", lty = 3) # create a dotted line


###################################################
### code chunk number 17: 08RIII.Rnw:404-406
###################################################
palette() # See the entire colour palette
palette()[2] # colour index 2 = red


###################################################
### code chunk number 18: 08RIII.Rnw:414-419
###################################################
IQR = x5["q3"] - x5["q1"]
upper = x5["q3"] + 1.5*IQR
lower = x5["q1"] - 1.5*IQR
(outliers = c(which(x>upper | x<lower)))
x[outliers]


###################################################
### code chunk number 19: 08RIII.Rnw:427-429
###################################################
minx = min(x[-outliers])
maxx = max(x[-outliers])


###################################################
### code chunk number 20: 08RIII.Rnw:432-437 (eval = FALSE)
###################################################
## abline(h=minx, col="blue")
## abline(h=maxx, col="gold")
## # plot the outlines in big blue triangles (pch = 2)
## points(x[outliers][1], col="dodgerblue2", cex=3, pch =2) 
## points(x[outliers][2], col="dodgerblue2", cex=3, pch =2) 


###################################################
### code chunk number 21: 08RIII.Rnw:443-449
###################################################
x5 = fivenum(x)
names(x5) = c("min","q1","median","q3","max")
boxplot(x)
abline(h=x5["q1"], col="red", lty=2) # create a dashed line
abline(h=x5["median"], col="green", lwd = 3) # create a thicker line
abline(h=x5["q3"], col="purple", lty = 3) # create a dotted line
abline(h=minx, col="blue", lty = 4)
abline(h=maxx, col="gold", lty = 5)
# plot the outlines in big blue triangles (pch = 2)
points(x[outliers][1], col="dodgerblue2", cex=3, pch =2) 
points(x[outliers][2], col="dodgerblue2", cex=3, pch =2) 


###################################################
### code chunk number 22: 08RIII.Rnw:492-493 (eval = FALSE)
###################################################
## install.packages("ggplot2")


###################################################
### code chunk number 23: pacakges (eval = FALSE)
###################################################
## # install.packages("ggplot2") # install (only do once)
## library("ggplot2")            # load
## package?ggplot2               # help   
## help(package = "ggplot2")     # another way to get help


###################################################
### code chunk number 24: 08RIII.Rnw:567-570
###################################################
library(ggplot2)
g = ggplot(mtcars, aes(x=mpg, y=disp)) # identify data and x/y variables
class(g)


###################################################
### code chunk number 25: 08RIII.Rnw:594-595
###################################################
g + geom_point()


###################################################
### code chunk number 26: 08RIII.Rnw:602-603
###################################################
g + geom_point() + geom_smooth(method ="lm")


###################################################
### code chunk number 27: 08RIII.Rnw:610-611
###################################################
g + geom_point() + theme_bw() 


###################################################
### code chunk number 28: 08RIII.Rnw:638-639
###################################################
h = ggplot(mtcars, aes(x=mpg, y=disp)) + geom_point(color='darkblue')


###################################################
### code chunk number 29: 08RIII.Rnw:646-647
###################################################
g + geom_point(color='darkblue', size = 5, alpha = 0.3)


###################################################
### code chunk number 30: 08RIII.Rnw:666-667
###################################################
g + geom_point(aes(color=factor(cyl)))
# see what happens without factor:
g + geom_point(aes(color=cyl), size=4)
# alternative way of writing
ggplot(mtcars, aes(x=mpg, y=disp, color=factor(cyl))) + geom_point()

###################################################
### code chunk number 31: 08RIII.Rnw:673-674
###################################################
g + geom_point(aes(shape=factor(cyl)))
# make the points bigger:
g + geom_point(aes(shape=factor(cyl)), size = 4)


###################################################
### code chunk number 32: 08RIII.Rnw:681-682
###################################################
g + geom_point(aes(color=factor(cyl)), alpha=0.4, size=5)


###################################################
### code chunk number 33: 08RIII.Rnw:692-694
###################################################
p = g + geom_point(aes(color=factor(cyl)))  
p + labs(title="Old cars", x="Miles per Gallon", y ="Displacement")


###################################################
### code chunk number 34: 08RIII.Rnw:723-726
###################################################
library("ISLR")
ggplot(Auto, aes(x=origin)) + geom_bar(aes(fill=factor(origin))) +
  xlab("") + ylab("") + ggtitle("BARCHART")


###################################################
### code chunk number 35: histaqua (eval = FALSE)
###################################################
## ggplot(Auto, aes(x=horsepower)) + 
##   geom_histogram(color='mediumvioletred', bins=30,
##                  fill='mediumaquamarine') +
##   xlab("") + ylab("") + ggtitle("HISTOGRAM")


###################################################
### code chunk number 36: 08RIII.Rnw:748-749
###################################################
ggplot(Auto, aes(x=horsepower)) + 
  geom_histogram(color='mediumvioletred', bins=30,
                 fill='mediumaquamarine') +
  xlab("") + ylab("") + ggtitle("HISTOGRAM")


###################################################
### code chunk number 37: autoside (eval = FALSE)
###################################################
## ggplot(Auto, aes(x=factor(origin), y=horsepower)) +
##   geom_boxplot(color='mediumpurple4', fill='lavenderblush') +
##   labs(title = "Side-by-side Boxplot", x="Origin") + 
##   scale_x_discrete(labels=c("American", "European", "Japanese"))


###################################################
### code chunk number 38: 08RIII.Rnw:781-782
###################################################
ggplot(Auto, aes(x=factor(origin), y=horsepower)) +
  geom_boxplot(color='mediumpurple4', fill='lavenderblush') +
  labs(title = "Side-by-side Boxplot", x="Origin") + 
  scale_x_discrete(labels=c("American", "European", "Japanese"))

# single boxplog
ggplot(Auto, aes(y=horsepower)) +
  geom_boxplot(color='mediumpurple4', fill='lavenderblush')

###################################################
### code chunk number 39: 08RIII.Rnw:793-797
###################################################
class(Auto$origin)
Auto$origin = factor(Auto$origin, 
          labels = c("American", "European", "Japanese"))
class(Auto$origin)


###################################################
### code chunk number 40: 08RIII.Rnw:803-805
###################################################
ggplot(Auto, aes(x=origin, y=horsepower)) + geom_boxplot() +
  labs(title = "Side-by-side Boxplot", x="Origin")


###################################################
### code chunk number 41: 08RIII.Rnw:871-874
###################################################
f <- '08RIII.Rnw'
knitr::purl(f)
Stangle(f)


