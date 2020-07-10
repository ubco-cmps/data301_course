### R code from vignette source '08RI.Rnw'
### Encoding: UTF-8

###################################################
### code chunk number 1: setup
###################################################
library(knitr)
opts_chunk$set(fig.path='figure/beamer-',fig.align='center',fig.show='hold',size='footnotesize')


###################################################
### code chunk number 2: 08RI.Rnw:586-588 (eval = FALSE)
###################################################
## 2+4
## print("Hello World!")


###################################################
### code chunk number 3: 08RI.Rnw:607-610
###################################################
# comments in purple italics
 2 + 3 # input
## ^ denotes output


###################################################
### code chunk number 4: 08RI.Rnw:674-675 (eval = FALSE)
###################################################
## source("simple.R") # for example


###################################################
### code chunk number 5: 08RI.Rnw:686-687
###################################################
print("Hello World!")


###################################################
### code chunk number 6: 08RI.Rnw:690-694
###################################################
x = 5
print(paste("x =", x))
print(paste("x", x, sep=" = "))
print("x=",x) # doesn't work like python


###################################################
### code chunk number 7: 08RI.Rnw:711-713 (eval = FALSE)
###################################################
## # tilde (~) is shortform for your home directory
## source("~/Dropbox/Data301/08R/data/simple.R")


###################################################
### code chunk number 8: 08RI.Rnw:731-732 (eval = FALSE)
###################################################
## setwd("c:/Documents/my/working/directory")


###################################################
### code chunk number 9: 08RI.Rnw:803-805
###################################################
      x = 5 # both OK!
x = 7


###################################################
### code chunk number 10: 08RI.Rnw:808-812
###################################################
x = 7
y = 3 # or
x = 7; y = 3
x = 7; # ok too


###################################################
### code chunk number 11: 08RI.Rnw:821-823
###################################################
x <- 5; # both OK!
x = 5


###################################################
### code chunk number 12: 08RI.Rnw:826-831 (eval = FALSE)
###################################################
## for (i in c(1,2,3)) {
##   print(i)
##   print(i + 1)
## print(i - 1)  # indent doesn't matter
## }


###################################################
### code chunk number 13: 08RI.Rnw:1000-1006
###################################################
# class works like type() in Python
class(1)   # like Python float type
class(as.integer(1)) # like Python int type
z = 1 + 2i; class(z)
class(TRUE) # notice all in caps!  (True in Python)
class("irene") # like Python string


###################################################
### code chunk number 14: numericAndInteger
###################################################
numobj = 2 # numeric (not integer)
as.integer(numobj) # integer
intobj = 2L # integer 
as.integer('4') # like int() in Python


###################################################
### code chunk number 15: characterquotes
###################################################
# note our usage of quotes 
charobj = "s"
strobj = 'string'
numstr = as.character(4) # like str(4) in Python
# badobj = "str' # unmatched quotes = bad


###################################################
### code chunk number 16: logical
###################################################
x = c(T, FALSE,TRUE, F) # notice we don't use quotes
x


###################################################
### code chunk number 17: num2logical
###################################################
as.logical(0)
as.logical(1)


###################################################
### code chunk number 18: factors
###################################################
notfactor = c("H","M", "M", "L", "H") 
notfactor
(fvec = factor(notfactor))
levels(fvec) # to see the levels


###################################################
### code chunk number 19: 08RI.Rnw:1090-1093
###################################################
# make sure your labels appear in the same order as levels(fvec) 
fvec = factor(x=notfactor, labels=c("High","Low","Medium"))
fvec


###################################################
### code chunk number 20: 08RI.Rnw:1101-1103
###################################################
(fvec = factor(x=notfactor, levels=c("L","M","H")))
(fvec2 = factor(x=notfactor, levels=c("L","M","H"), ordered = TRUE))


###################################################
### code chunk number 21: 08RI.Rnw:1110-1113
###################################################
fvec[1]>fvec[3]
fvec2[1]>fvec2[3]
print(paste(fvec2[1], "is treated as greater than", fvec[3]))


###################################################
### code chunk number 22: 08RI.Rnw:1121-1123
###################################################
fvec3 = factor(x=notfactor, levels=c("L","M","H"), labels=c("Low","Medium", "High"), ordered =TRUE)
fvec3


###################################################
### code chunk number 23: letter
###################################################
x = c("o","q","h","n","s","b","u","d","p","r")
xlist = factor(x, levels=letters)
table(xlist)


###################################################
### code chunk number 24: 08RI.Rnw:1171-1176
###################################################
var1 <- FALSE
var2 <- T
var3 <- "TRUE"
var4 <- 3^4 - 10
var5 <- "Hello World!"


###################################################
### code chunk number 25: 08RI.Rnw:1191-1193
###################################################
scalar1 <- 1
scalar2 <- "string"


###################################################
### code chunk number 26: 08RI.Rnw:1196-1198
###################################################
vec1 <- c(1,2,3); vec2 <- c("one", "two", "three")
vec3 <- c(TRUE, FALSE, T)


###################################################
### code chunk number 27: 08RI.Rnw:1224-1230
###################################################
# example of a numeric vector:
y=c(2,3,0,3,1,0,0,1)
# example of a character vector:
letters<-c('A','B','C')
# example of a logical vector:
lvec <- c(TRUE, FALSE, FALSE)


###################################################
### code chunk number 28: 08RI.Rnw:1233-1235
###################################################
# the integer 1 gets converted to character
print(vec <- c(1, "a", "b"))


###################################################
### code chunk number 29: 08RI.Rnw:1251-1256
###################################################
(x = c("apple", 2, TRUE)) # converts all to character
(x = c(TRUE, 4)) # converts all to numeric
(x = c(2L, -1.3)) # converts to numeric
(x = c(TRUE, 0, 1, FALSE)) # converts all to numeric
as.logical(x = c(TRUE, 0, 1, FALSE)) # converts to logical


###################################################
### code chunk number 30: 08RI.Rnw:1264-1272
###################################################
# Ceate a vector of size 10, where each element is a 2:
y = rep(2,10)
# This specifies a sequence of integers:
y = 3:12
#This specifies a sequence of real numbers:
z = seq(from=3,to=12,by=1) # by = 1 is the default
#This specifies a sequence of real numbers:
z = seq(from=2,to=1,by=-0.1)


###################################################
### code chunk number 31: 08RI.Rnw:1284-1288
###################################################
seq(1,2,0.1) # same as seq(from=1,to=2,by=0.1)
# if we want to specify arguments out of order, 
# we HAVE to include argument names:
seq(by=0.1, to=2, from=1) # arguments in green


###################################################
### code chunk number 32: 08RI.Rnw:1298-1299
###################################################
set.seed(301)


###################################################
### code chunk number 33: 08RI.Rnw:1301-1308
###################################################
# Ceates a vector of size 10, of random numbers between 0 and 1
y = runif(10)
# Creates a vector of size 3 sampled from x without replacement
(y = sample(x=c(1,2,3), size=3))
(y = sample(x=c(1,2,3), size=3)) # random output each time
# Creates a vector of size 3 sampled from x with replacement
(y = sample(x=c(1,2,3), size=3, replace=TRUE))


###################################################
### code chunk number 34: 08RI.Rnw:1315-1321
###################################################
x <- vector() # defaults to logical (FALSE)
x <- vector(length = 10) # defaults to logical vec of FALSES
x <- vector("character", length = 10)
x <- vector("numeric",   length = 10)
x <- vector("integer",   length = 10)
x <- vector("logical",   length = 10)


###################################################
### code chunk number 35: 08RI.Rnw:1324-1325
###################################################
x <- ()


###################################################
### code chunk number 36: 08RI.Rnw:1354-1358
###################################################
x = 4; length(x)
y=c(2,3,0,3,1,0,0,1); length(y)
# notice that this does not count characters in a string:
length("Hello") # see nchar("Hello") for # of characters


###################################################
### code chunk number 37: 08RI.Rnw:1367-1371
###################################################
z = c("apples","bananas","oranges", "pineapples"); z[1]
z[2:3]
z[c(4,2)]
z[-1] # removes the first item in the vector


###################################################
### code chunk number 38: 08RI.Rnw:1382-1387
###################################################
z = c(123456, 25, 2019); names(z) <- c("studentID","age","year")
z["studentID"] # same as z[1]
z[c("age, year")] # wont work like z[c(2,3)]
z[c(FALSE, TRUE, TRUE)] # index using logicals (same as z[c(1,2)]) 
z[-"year"] # wont work like z[-3]


###################################################
### code chunk number 39: 08RI.Rnw:1393-1399
###################################################
z = c("first","second","third", "fourth")
# adds a fith element and replaces the second
z[5] = "fifth";  z[2] = "2nd"
z
#removes the second element
(z = z[-2])


###################################################
### code chunk number 40: 08RI.Rnw:1406-1408
###################################################
z[10] = "tenth"
z


###################################################
### code chunk number 41: 08RI.Rnw:1414-1418
###################################################
z = c(123456, 25, 2019); names(z) <- c("studentID","age","year")
# adds a forth element with the students major
z["major"] = "COSC"
z


###################################################
### code chunk number 42: 08RI.Rnw:1424-1425
###################################################
set.seed(123)


###################################################
### code chunk number 43: 08RI.Rnw:1432-1435
###################################################
(y= sample(1:20, 9)) # samples 9 random numbers from 1 to 20
2 * y # multiplies each element by 2
y + y # equivalent


###################################################
### code chunk number 44: 08RI.Rnw:1444-1450
###################################################
print(y)
sort(y)
print(y)
# this time reassign it
y = sort(y, decreasing = TRUE)
print(y)


###################################################
### code chunk number 45: emptyMatrix
###################################################
(m <- matrix(1:8, nrow = 2, ncol = 4))
dim(m) # gives the number or rows and columns
class(m)


###################################################
### code chunk number 46: fillingMatrices
###################################################
(m <- matrix(1:6, nrow=2, ncol =3)) # fill columnwise
(m <- matrix(1:6, nrow=2, ncol =3, byrow=TRUE)) #fill row-wise


###################################################
### code chunk number 47: 08RI.Rnw:1491-1494
###################################################
array(1:6, dim=c(2,3)) # a 2 x 3 array  (2 dimensional)
# returns 2 matrices of dimension 4 x 3
(arr3d <-  array(1:24, dim=c(4,3,2))) # a 4 x 3 x 2 array (3 dimensional)


###################################################
### code chunk number 48: namedMatrix
###################################################
rownames(m) = c("row1", "row2")
colnames(m) = c("col1", "col2", "col3")
m


###################################################
### code chunk number 49: matrixIndex
###################################################
m[,3] # extract the third column of m
m[1,] # extract the first row of m
m[1,3] # extract the element in the 1st row and 3rd column
arr3d[4,3,2] # 4th row and 3rd column from the 2nd matrix


###################################################
### code chunk number 50: matrixIndexName
###################################################
# extract the third column of m
m[,"col3"] # same as m[,3]
# extract the first row of m
m["row1",] # same as m[1,]
# extract the element in the 1st row and 3rd column
m["row1","col3"] # same as m[1,3]


###################################################
### code chunk number 51: matrixIndex2
###################################################
(m = matrix(11:4, 2,4))
m[8] # extracts the 8th element in m
(mVector = as.numeric(m))
mVector[8]


###################################################
### code chunk number 52: onetypematrix
###################################################
m = matrix(c("bananas", 2, TRUE, 0),  nrow=2, ncol=2)
# notice how all coerce to characters:
m


###################################################
### code chunk number 53: list
###################################################
(x = list("apple", 2, TRUE)) 
(y = c("apple",2,TRUE))


###################################################
### code chunk number 54: listslicing
###################################################
x[[1]] # first member
x[[2]] # second member, and so on ...


###################################################
### code chunk number 55: newlist
###################################################
(y = list(c("apples", "banana", "four"), list(1:3,"hi"), matrix(1:6,2)))
y[[3]][2,3]


###################################################
### code chunk number 56: 08RI.Rnw:1643-1646
###################################################
y[[1]] # this is a vector
# the third element of this vector is obtained in the usual way
y[[1]][3] 


###################################################
### code chunk number 57: 08RI.Rnw:1649-1651
###################################################
(new = y[[1]]) # this is a vector
new[1]


###################################################
### code chunk number 58: newlist_slicing
###################################################
y[[2]]


###################################################
### code chunk number 59: 08RI.Rnw:1661-1663
###################################################
newlist = y[[2]] # this is a list
newvec = newlist[[1]][1] # this is a vector


###################################################
### code chunk number 60: 08RI.Rnw:1670-1673
###################################################
y[[2]] # this is a list
y[[2]][[1]] # this is a vector
y[[2]][[1]][3] # this is a scalar


###################################################
### code chunk number 61: 08RI.Rnw:1679-1681
###################################################
y[[2]] # this is a list
y[[2]][[2]] # this is a scalar (one length vector)


###################################################
### code chunk number 62: 08RI.Rnw:1684-1689 (eval = FALSE)
###################################################
## # this is overkill:
## y[[2]][[2]][1] # this is a scalar (one length vector)
## # like doing:
## x = 5
## x[1]


###################################################
### code chunk number 63: 08RI.Rnw:1695-1701
###################################################
numbers= c(2,4) # can define the member outside first
y = list(words=c("apples", "banana", "four"),
         numbers, logicals=TRUE)
y$words # same this as y[[1]]
y$numbers # same this as y[[2]]
y$logicals # same this as y[[3]]


###################################################
### code chunk number 64: 08RI.Rnw:1708-1712
###################################################
y = list(c("apples", "banana", "four"),
         c(2,4), TRUE)
names(y) <- c("words","numbers","logicals")
y


###################################################
### code chunk number 65: 08RI.Rnw:1722-1725 (eval = FALSE)
###################################################
## y$words
## y[["words"]]
## y[[3]]


###################################################
### code chunk number 66: 08RI.Rnw:1728-1730 (eval = FALSE)
###################################################
## y$3 # dollar sign wont work with number index
## y[[words]] # double square brackets need names in quotes


###################################################
### code chunk number 67: newlist_newcontent
###################################################
y$words[3] = "oranges"#replace the 3rd element of the 1st member
y[[1]][4] = "pineapples"#add a 4th element to the 1st member
y[[4]] = c(0,1,1,0) # add a forth member to y
y$"fifth" = 3:12 # add a fifth member to y (named "fifth")


###################################################
### code chunk number 68: dataframetest
###################################################
Person=c('John', 'Jill', 'Jack')
Grade=c(45,92,91)
(Lab=data.frame(Person, Grade))


###################################################
### code chunk number 69: 08RI.Rnw:1770-1773
###################################################
Person=c('John', 'Jill', 'Jack','James')
Grade=c(45,92,91)
(Lab=data.frame(Person, Grade))


###################################################
### code chunk number 70: 08RI.Rnw:1776-1779
###################################################
Person=c('John', 'Jill', 'Jack','James')
Grade=c(45,92,91, NA)
Lab=data.frame(Person, Grade)


###################################################
### code chunk number 71: dataframetest2
###################################################
colnames(Lab) # adopted from the variable names inputed
rownames(Lab) # default to increasing integers
# we could also add row names if we choose
rownames(Lab) = c("Student1", "Student2", "Student3", "Student4")
Lab


###################################################
### code chunk number 72: 08RI.Rnw:1798-1802
###################################################
Lab$Person
Lab$Grade
# N.B. This does not work for rows:
Lab$Student1


###################################################
### code chunk number 73: 08RI.Rnw:1816-1818
###################################################
Lab$Passed=c(FALSE,TRUE,TRUE,NA)
Lab


###################################################
### code chunk number 74: 08RI.Rnw:1837-1839
###################################################
attributes(Lab) # data vector defined in previous example
attributes(m) # matrix defined previously


###################################################
### code chunk number 75: 08RI.Rnw:2040-2042
###################################################
# the intake file is in a folder called data in my working directory
read.table("data/intake.txt", header=TRUE)


###################################################
### code chunk number 76: 08RI.Rnw:2058-2059
###################################################
intake = read.table("data/intake.txt", header=TRUE)


###################################################
### code chunk number 77: 08RI.Rnw:2075-2076
###################################################
data = read.table("data/athlete.csv", sep=",", header=TRUE)


###################################################
### code chunk number 78: 08RI.Rnw:2079-2080
###################################################
data = read.csv("data/athlete.csv") # header=TRUE by default in read.csv


###################################################
### code chunk number 79: 08RI.Rnw:2083-2084 (eval = FALSE)
###################################################
## data <- read.csv("/Users/ivrbik/DATA103/data.csv", header=T)


###################################################
### code chunk number 80: 08RI.Rnw:2093-2095
###################################################
write.table(Lab, file="Lab.txt")
write.csv(Lab, file="Lab.csv")


###################################################
### code chunk number 81: 08RI.Rnw:2098-2099 (eval = FALSE)
###################################################
## write.table(Lab, file="<path>/Lab.txt")


###################################################
### code chunk number 82: 08RI.Rnw:2131-2134
###################################################
f <- '08RI.Rnw'
knitr::purl(f)
Stangle(f)


