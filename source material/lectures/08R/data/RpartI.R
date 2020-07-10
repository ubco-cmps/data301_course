
###############################
# Set your working directory ##
###############################

setwd("/Users/ivrbik/Dropbox/Teaching/UBCO/Data301/SummerSlides/08R/")
setwd("~/Dropbox/Teaching/UBCO/Data301/SummerSlides/08R/")
# to check your working directory:
getwd()

# Aside: to remove all the objects in your environment type:
rm(list=ls())

###############################
# Common functions ############
###############################

y <- c(11, 4, 1, -7,  11, 3)
mean(y)
median(y)
sd(y)
var(y) # = sd(y)^2
min(y)
max(y)
range(y) # two values (smallest and largest val)
diff(range(y)) # range one value
fivenum(y)
summary(y)
log(y)
exp(y)
abs(y)
sum(y)
length(y)
unique(y)
sort(y)
sort(y, decreasing = TRUE)

# notice how mathematic operations are done element-wise!
y + 2 # adds 2 to each element in y
exp(y) # maps the exponential function to all elements in y


###############################
# Data types ##################
###############################

# Integer:
class(2L) # suffix L indicates integer
class(1:10)
class(as.integer(2))

# Numeric:
class(2)
class(sqrt(10))
class(pi)

# Logical:
class(TRUE) ; class(T) ; class(as.logical(1))
class(FALSE) ; class(F) ; class(as.logical(0)) 
# coerce/casting using as.logical 

# Character:
class("string")
class('single quotes ok')
class('T')

# Factor:
notfactor = c("H","M", "M", "L", "H")
(fvec = factor(notfactor))
levels(fvec) # to see the levels
# make sure your labels appear in the same order as levels(fvec)
fvec = factor(x=notfactor, labels=c("High","Low","Medium"))
# otherwise specify levels:
fvec = factor(x=notfactor, levels = c("H","M","L"),
              labels=c("High","Medium", "Low"))

# we can specify levels as ordered 
(fveco = factor(x=c("H", "H" ,"M"), 
                levels = c("L","M","H"),
                labels=c("Low","Medium","High"),
                ordered = TRUE))
fveco[2] > fveco[3] # can use comparisons


###############################
# Data structures #############
###############################

#------------------------------
# Scalars (one length vectors) 
#------------------------------

x = 5
length(x)
x[1] # indexing not needed
x # same as above

#------------------------------
# Vectors 
#------------------------------

# atomic vectors may only hold one data type
myVector = c(4, 3, 5, 'a', 'd') # numeric coerced to character
otherVector = c(0,1,TRUE, FALSE, T) # logical coerced to numeric

# you can create names for vectors:
names(myVector) <- c("first", "second", "third","fourth","fifth")
# index using single square brackets:
myVector[1] # by index STARTING FROM 1!
myVector["first"] # or by name (if you have given it one)

# index using logicals
myVector[c(T,T,T,F,F)]

#------------------------------
# Matrices 
#------------------------------

(mat1 <- matrix(1:12, nrow=3, ncol=4))#equivalent to:
(mat1 <- matrix(1:12, nrow=3)) #equivalent to:
(mat1 <- matrix(1:12, ncol=4))
mat1
(mat2 <- matrix(1:12, nrow=3, byrow=TRUE))
mat2

# named matrices:
mat1 <- matrix(1:12, nrow=3)
colnames(mat1) <- c("col1", "col2", "col3", "col4")
rownames(mat1) <- c("row1", "row2", "row3")
mat1

# index using square brackets with two indeces 
# first index = row, second index = column
mat1[1,4] # by integer index
mat1["row1","col4"] # or by name (notice the quotes)
mat1[2,] # extract entire rows
mat1[,4] # extract entire columns
mat1[1:2,3:4] # using slicing with colon notation
mat1[c(1,3),c(1,2,4)] # using slicing with colon notation
mat1[c(T,F,T),c(T,T,F,T)] # same as above

# Aside: can create matices by combining row/column vectors:
x <- 1:3
y <- 2:4
cbind(x,y) # column bind
rbind(x,y) # row bind

#------------------------------
# Arrays 
#------------------------------

# a matrix is a 2D array:
array(1:12, dim=c(3,4)) # same as mat1

# example of a 3D array:
(arr3d <-  array(1:24, dim=c(4,3,2))) # a 4 x 3 x 2 array (3
# index using single square brackets with 3 numbers
arr3d[3,1,2] # 3rd row, 1st column of the second matric
arr3d[,,2] # extract the entire second matrix

# can also use slicing, 
# vector indeces (numbers or logicals) 
# named indeces

# N.B. like vectors, matices and arrays can only
# store one data type:
# converts numbers to character
exmat <- matrix(c(1:4,letters[1:4]), nrow=4) 

#------------------------------
# Lists 
#------------------------------

# CAN store different data types:
y <- list(4,"a")
y
class(y[[1]]) # numeric
class(y[[2]]) # character

# first member named, second member not
myList = list(first=matrix(1:12,ncol=3), c('a', 'b'))

# index members using double square brackets
myList = list(x=1:4, y=c('a', 'b'))
myList[[1]]
myList[["x"]] #need quotes
myList$x # don't need quotes
myList$"x" # but can use quotes if you want
# myList$1 # NOT VALID
# myList[[x]] # NOT VALID

# example of a nested list
mylist2 <- list(first = myList, second= mat1, third=4)
mylist2[[1]] # a list
mylist2[[1]][[2]] # a vector
mylist2[[1]][[2]][1] # a scalar

#------------------------------
# Data frames
#------------------------------

# like a spread sheet
# CAN contain multiple types of data (one type per column)
# column vectors must be the same lenght
Person=c('John', 'Jill', 'Jack','James')
Grade=c(45,92,91, NA)
Lab=data.frame(Person, Grade)

# add a new column:
Lab$Passed=c(FALSE,TRUE,TRUE,NA)

# indexing like a matrix:
Lab[2,3] # did Jill pass?

# or index using column names:
Lab$Passed[2] # did Jill pass?

# can convert matrices to data frames:
matdf <- as.data.frame(mat1)
matdf$col1 # now we can use dollar sign referencing!

######################################################
#### Create a list called grades and add the following elements:
#### 1. Name (first name and last name),
#### 2. Student number,
#### 3. Assignment grades (multiple entries), and
#### 4. Midterm grade.
######################################################

grades = list(name=c("Irene","Vrbik"), number=9999999, assignments=c(99,100,55), midterm=100) 

grades <- list()
grades$name = c("Irene", "Vrbik")
grades$number = 999999
grades$assignments = c(99,99,99)
grades$midterm = 100

####################
# Reading in data: #
####################

# if our data is saved to our working directory use:
read.table("intake.txt", header=TRUE)

# if our data is saved into a folder called "data"
# in our working directory use:
read.table("data/intake.txt", header=TRUE)

# notice what happens when we don't specify header=T
head(read.table("data/intake.txt"))

# better to save this table to an object:
# headers are treated as data and generic
# column names (V1 and V2) are created
intake = read.table("data/intake.txt", header=T)

# read.table could also read csv files,
# but we need to specify the separator:
data = read.table("data/athlete.csv", sep=",", header=TRUE)

# or we could use read.csv
# the default of read.csv is header = TRUE
data = read.csv("data/athlete.csv", header=TRUE)
# same as above
data = read.csv("data/athlete.csv")

#####################
# Writing out data: #
#####################

write.table(Lab, file="Lab.txt")
write.csv(Lab, file="Lab.csv")
write.csv(Lab, file="data/Lab.csv")

######################################################
#### Create a data frame mydata with the following column names/data:
#### 1.1 id - numbers one to 5.
#### 1.2 location – “BC”, “BC”, “AB”, “MB”, “BC”.
#### 1.3 value – 10, 20, 30, 40, 50.
#### 1.4 Make location a factor.
######################################################

# -----------
# question 1
# -----------
mydata <- data.frame(id=1:5, location=c("BC","BC","AB","MB","BC"), value=c(10,20,30,40,50))
# will default to levels for string vectors
# convert to a factor using factor() or as.factor()
mydata$location <- as.factor(mydata$location)

# -----------
# question 2
# ------------
mydata$success <- c("Y","N","N","N","Y")
mydata$success <- as.factor(mydata$success)
# faster
mydata$success <- as.factor(c("Y","N","N","N","Y"))

# -----------
# question 3
# -----------
write.csv(mydata, "mydata.csv")
# examining the csv file we see that we have the id and the row numbers storing the same information.  To get rid of the row names (which by default are set to incremening integers), set the row.names argument to FALSE
write.csv(mydata, "mydata.csv", row.names=FALSE)

