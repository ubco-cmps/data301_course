### R code from vignette source '08RII.Rnw'
### Encoding: UTF-8

###################################################
### code chunk number 1: setup
###################################################
library(knitr)
opts_chunk$set(fig.path='figure/beamer-',fig.align='center',fig.show='hold',size='footnotesize')


###################################################
### code chunk number 2: 08RII.Rnw:179-184
###################################################
 x <- c(TRUE,FALSE,TRUE,FALSE)
 y <- c(FALSE,TRUE,TRUE,FALSE)
 !x
 x&y
 x|y


###################################################
### code chunk number 3: 08RII.Rnw:190-195
###################################################
 x <- c(TRUE,FALSE,TRUE, FALSE)
 z1 <- c(TRUE, TRUE, FALSE)   # recycles TRUE
 z2 <- c(FALSE, TRUE, FALSE)  # recycles FALSE
 x|z1
 x|z2

 # recycling in matrice:
 matrix(1:12, ncol=3, nrow=5)

###################################################
### code chunk number 4: 08RII.Rnw:202-206
###################################################
 x <- c(TRUE,FALSE,FALSE,TRUE)
 y <- c(FALSE,TRUE,FALSE,TRUE)
 x&&y
 x||y


###################################################
### code chunk number 5: 08RII.Rnw:213-217
###################################################
TRUE & FALSE
TRUE && FALSE
TRUE | FALSE
TRUE || FALSE


###################################################
### code chunk number 6: 08RII.Rnw:226-229
###################################################
 x <- c(TRUE,FALSE,TRUE,TRUE)
sum(x) # counts the number of TRUEs 
sum(!x) # counts the number of FALSEs 


###################################################
### code chunk number 7: 08RII.Rnw:260-266
###################################################
 x <- 4
 y <- 16
 x < y
 4*x >= y
 y == 16
 x != 4


###################################################
### code chunk number 8: 08RII.Rnw:284-285
###################################################
set.seed(4444)


###################################################
### code chunk number 9: 08RII.Rnw:288-293
###################################################
# sample twelve numbers from 1--10 with replacement
(y = sample(10, 12, replace=TRUE))

y[y>7] # returns any numbers(s) larger than 7
y[y>7 & y%%2==0] # returns any even number(s) larger than 7 


###################################################
### code chunk number 10: 08RII.Rnw:296-298
###################################################
x = c("female","male","female","male","male","female")
which(x=="female")


###################################################
### code chunk number 11: 08RII.Rnw:323-324
###################################################
data("iris")


###################################################
### code chunk number 12: 08RII.Rnw:333-334
###################################################
head(iris)


###################################################
### code chunk number 13: 08RII.Rnw:337-338
###################################################
head(iris, 2)


###################################################
### code chunk number 14: 08RII.Rnw:344-346
###################################################
tail(iris) # default is to print the last 6 lines
tail(iris, 2) # specify a certain number of lines as a 2nd arg


###################################################
### code chunk number 15: 08RII.Rnw:366-370
###################################################
data(iris) 
nrow(iris) # 150 observations
longPetals = subset(iris, Petal.Length>5)
nrow(longPetals) # subset of 42 observations


###################################################
### code chunk number 16: 08RII.Rnw:373-376
###################################################
rows_to_include = iris$Petal.Length > 5
long_Petals = iris[rows_to_include,]
nrow(long_Petals) # same subset of 42 observations


###################################################
### code chunk number 17: 08RII.Rnw:385-392
###################################################
data(iris) 
nrow(iris) # 150 observations

# all observations having a petal length greater than 5
# or belong to the setosa family.
newdat = subset(iris, Species=="setosa" | Petal.Length>5) 
nrow(newdat)


###################################################
### code chunk number 18: 08RII.Rnw:405-407
###################################################
lengthDat = subset(iris, select = c(Sepal.Length, Petal.Length))
print(paste(nrow(lengthDat), ncol(lengthDat)))


###################################################
### code chunk number 19: 08RII.Rnw:413-414
###################################################
head(lengthDat)


###################################################
### code chunk number 20: 08RII.Rnw:422-427
###################################################
cols_to_include = colnames(iris) %in% 
  c("Sepal.Length", "Petal.Length")
cols_to_include
length_data = iris[,cols_to_include]
print(paste(nrow(length_data), ncol(length_data)))


###################################################
### code chunk number 21: 08RII.Rnw:435-437
###################################################
all.equal(longPetals, long_Petals)
all.equal(lengthDat, length_data)


###################################################
### code chunk number 22: 08RII.Rnw:450-453
###################################################
dim(iris)
irisLonger = transform(iris, Sepal.Length = Sepal.Length + 0.1)
dim(irisLonger)

# alternative method:
irisLonger = iris
irisLonger$Sepal.Length = irisLonger$Sepal.Length + 0.1

###################################################
### code chunk number 23: 08RII.Rnw:458-460
###################################################
head(iris,4)
head(irisLonger, 5)



###################################################
### code chunk number 24: 08RII.Rnw:470-473
###################################################
dim(iris)
irisMore = transform(iris, logPL = log(Petal.Length))
dim(irisMore)

# alternative method:
irisMore = iris
irisMore$logPL = log(iris$Petal.Length)

###################################################
### code chunk number 25: 08RII.Rnw:480-481
###################################################
head(irisMore)


###################################################
### code chunk number 26: 08RII.Rnw:492-497
###################################################
iSpecies = split(iris, iris$Species)
names(iSpecies)
# iSpecies$setosa is the same thing as
setosa = subset(iris, Species=="setosa") 
all.equal(iSpecies$setosa,setosa)


###################################################
### code chunk number 27: 08RII.Rnw:506-510
###################################################
x <- c(4,0,-7,9,8,3)
x
sortx <- sort(x)
sortx


###################################################
### code chunk number 28: 08RII.Rnw:519-521
###################################################
(o <- order(x))
x[o]


###################################################
### code chunk number 29: 08RII.Rnw:531-535
###################################################
o = order(iris$Petal.Length)
head(o)
irisSorted = iris[o,]
head(irisSorted)


###################################################
### code chunk number 30: 08RII.Rnw:548-553
###################################################
gender = c("female","male","female","male","male","female")
age = c(36, 24, 25, 40, 22, 23)
df = data.frame(gender=gender, age=age)
o = order(df$gender, df$age)
df[o,]


###################################################
### code chunk number 31: 08RII.Rnw:568-575
###################################################
y = -1:3  # fills elements 1--5
y[7] = 7  # element 6 is missing
y
is.na(y)

(sy = sqrt(y))   # take the square roots 
is.nan(sy)


###################################################
### code chunk number 32: 08RII.Rnw:613-614 (eval = FALSE)
###################################################
## newdata <- na.omit(mydata)


###################################################
### code chunk number 33: 08RII.Rnw:617-619
###################################################
mean(y)
mean(y, na.rm = TRUE)


###################################################
### code chunk number 34: 08RII.Rnw:627-628
###################################################
set.seed(4444)


###################################################
### code chunk number 35: 08RII.Rnw:632-635
###################################################
y = sample(c(0,1,2,3,4), 10, replace= TRUE)
# replace 0s with NAs
y[y==0] = NA


###################################################
### code chunk number 36: 08RII.Rnw:638-640
###################################################
# replace NAs with 0s
y[is.na(y)] = 0


###################################################
### code chunk number 37: 08RII.Rnw:677-682
###################################################
n = 1
while (n<=3){
  print(n)
  n = n + 1
}


###################################################
### code chunk number 38: 08RII.Rnw:717-723
###################################################
n=1
repeat {
  print(n)
  n = n + 1
  if (n>5) break
}


###################################################
### code chunk number 39: 08RII.Rnw:784-787
###################################################
for (i in 1:6){
  print(i) 
}


###################################################
### code chunk number 40: 08RII.Rnw:824-827
###################################################
for i in 1:6{
  print(i)
}


###################################################
### code chunk number 41: 08RII.Rnw:840-844
###################################################
fruit = c("apples", "banana", "oranges")
for (i in fruit){
  print(i)
}


###################################################
### code chunk number 42: 08RII.Rnw:855-859
###################################################
x <- c("Hello", "World")
for (i in seq_along(x)){
  print(paste("i=",i,"x[i]=",x[i]))
}


###################################################
### code chunk number 43: 08RII.Rnw:862-863
###################################################
for (i in 1:length(x)){print(paste("i=",i,"x[i]=",x[i]))}


###################################################
### code chunk number 44: 08RII.Rnw:873-877
###################################################
x <- c("apple","ball","cat","dog")
for (i in c(3,1,4,2)){
  print(paste("i=",i,"x[i]=",x[i]))
}


###################################################
### code chunk number 45: 08RII.Rnw:894-900
###################################################
x <- c("apple", "ball","cat","dog","elephant","fish")
for (i in seq_along(x)){
  print(paste("iteration", i))
  if (i%%2==0)
    next
  print(x[i])} # wont be printed for even indices


###################################################
### code chunk number 46: 08RII.Rnw:923-926
###################################################
y <- 1:6
# will add 2 to each element in y
y + 2


###################################################
### code chunk number 47: 08RII.Rnw:984-988
###################################################
m <- matrix(1:12, nrow=3, ncol=4)
m
mRowSums = apply(m, 1, sum) # index = 1 for rows
mRowSums


###################################################
### code chunk number 48: 08RII.Rnw:996-1002
###################################################
m <- matrix(1:12, nrow=3, ncol=4)
mRowSums = NULL
for (i in 1:nrow(m)){
  mRowSums[i] = sum(m[i,])
}
mRowSums


###################################################
### code chunk number 49: 08RII.Rnw:1009-1014
###################################################
m <- matrix(1:12, nrow=3, ncol=4)
m
#notice how the margin changes to 2 below
mColSums = apply(m, 2, sum) # index 2 for columns
mColSums


###################################################
### code chunk number 50: 08RII.Rnw:1025-1028
###################################################
setosa = subset(iris, Species=="setosa", 
                select= c("Sepal.Length", "Sepal.Width"))
apply(setosa, 2, mean)


###################################################
### code chunk number 51: 08RII.Rnw:1214-1217
###################################################
f <- '08RII.Rnw'
knitr::purl(f)
Stangle(f)


