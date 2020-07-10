setwd("~/Dropbox/Teaching/UBCO/Data301/Irenes_301_Slides/09R/")

myVector = c(4, 3, 5, 'a', 'd')
names(myVector) <- c("first", "second", "third", "fourth", "fifth")

mat1 <- matrix(1:12, nrow=3) #equivalent to:
mat1 <- matrix(1:12, nrow=3, ncol=4)#equivalent to:
mat1 <- matrix(1:12, ncol=4)
mat1
mat2 <- matrix(1:12, nrow=3, byrow=TRUE)
mat2


(mat3 <- cbind(mat1, c(1:4))) # will error
(mat3 <- cbind(mat1, c(1:3)))
(mat3 <- cbind(mat1, c(1:nrow(mat1))))
(mat4 <- rbind(mat1, c(1:4)))

# you can create names for vecotrs and matrixes:
names(myVector) <- c("first", "second", "third","fourth","fifth")
myVector["first"]

mat1 <- matrix(1:12, nrow=3)
colnames(mat1) <- c("col1", "col2", "col3", "col4")
rownames(mat1) <- c("row1", "row2", "row3")
mat1

myList = list(first=matrix(1:12,ncol=3), c('a', 'b'))

y <- list(4,"a")
myList = list(x=1:4, y=c('a', 'b'))
mylist2 <- list(first = myList, second= mat1, third=4)
myList[[1]]
myList[["x"]] #need quotes
myList$x # don't need quotes




###############################################################
#### Create a list called grades and add the following elements
#### 1. Name (first name and last name),
#### 2. Student number,
#### 3. Assignment grades (multiple entries), and
#### 4. Midterm grade.
###############################################################

grades = list(name=c("Irene","Vrbik"), number=9999999, grades=c(99,100,55), midterm=100) 

grades <- list()
grades$name = c("Irene", "Vrbik")
grades$number = 999999
grades$grades = c(99,99,99)
grades$midters = 100


# data frames:
myDF = data.frame(c(1:3), c(2:4))


# this is a data frame
myDF = data.frame(x = c(1:3), y = (2:4))

myDF = data.frame(x = c(1:3), y = c(2:5))

x <- 1:3
y <- 2:4
# this is a matrix
xy <- cbind(x,y)
# this is a data frame
mydf <- as.data.frame(xy)

# can call data frame columns by $name
mydf$x
mydf$z <- 5:7
mydf



# factors
x
x <- as.factor(x)

gender <- c(0,1,0,1,1,1,0,0,0,1)
gender <- as.factor(gender)
gender
gender <- factor(gender, labels=c("male", "female"))
gender
levels(gender)
x <- c("good","bad","bad") # excellent
x <- factor(x, levels = c("good", "bad","excellent"))

str(gender)
class(gender)


# subsetting

# subset
subset(mydata, location=="BC")


###############################################################
#### Create a data frame mydata with the following column names/data:
#### 1.1 id - numbers one to 5.
#### 1.2 location – “BC”, “BC”, “AB”, “MB”, “BC”.
#### 1.3 value – 10, 20, 30, 40, 50.
#### 1.4 Make location a factor.
###############################################################

# question 1
mydata <- data.frame(id=1:5, location=c("BC","BC","AB","MB","BC"), value=c(10,20,30,40,50))
# will default to levels for string vectors
# mydata$location <- as.factor(mydata$location)

# question 2
mydata$success <- c("Y","N","N","N","Y")
mydata$success <- as.factor(mydata$success)
# faster
mydata$success <- as.factor(c("Y","N","N","N","Y"))


# question 3
subset(mydata, location=='BC' & value >= 20)

library(ggplot2)
library(ISLR)
# help file for packages:
help(package=ISLR)
data(Auto)
table(Auto$origin)

# Start with the ggplot() command and put origin as x.
# Use geom_bar() to create the bar chart
# Use fill = factor(origin) to colour the bars for different groups. 

f <- ggplot(Auto, aes(x=origin))
f+ geom_bar(aes(fill=factor(origin))) + xlab("origin") + ylab("") + ggtitle("BARCHART")

# alternative
hist(Auto$origin, xlab="origin")


# Start with the ggplot() command, and put horsepower as x.
# Use geom_histogram() to create the histogram
# You can specify the number of bins in geom_histogram(}.  Default is used if blank.
# Use color for the outline of the boxes, and  fill for the inside of the boxes. 
# NOTE: colouring the outlines a separate colour can help to make the graph more readable. 
# A full list of colours can be found here: http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf

# histogram
ggplot(Auto, aes(x = horsepower)) + geom_histogram(color = 'mediumvioletred', fill= 'mediumaquamarine',binwidth=5) + xlab("") + ylab("") + ggtitle("HISTOGRAM")


# boxplot
ggplot(Auto, aes(x = factor(origin), y = horsepower)) + geom_boxplot(color = 'mediumvioletred', fill= 'mediumaquamarine') + xlab("") + ylab("")+ ggtitle("BOXPLOT")

# empirical cdf
Auto$origin <- as.factor(Auto$origin)
ggplot(Auto, aes(x = horsepower)) + stat_ecdf(color = 'mediumvioletred') + xlab("") + ylab("")+ ggtitle("ECDF")


