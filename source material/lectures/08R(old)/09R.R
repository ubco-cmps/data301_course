# last python example
y <- c(4, 5, 3, 4, 5, 6)
prod(y - 2)

y <- c(1,2,3,4,5,6)
mean(y)

{print("hi")
  print("bye")
  print("lines")}

print(paste("hello","world"))

x <- 5
x = 5
x = 3
print(paste("x =", x))
print(paste('x', x, sep=" = "))

y <- c(1,2,3,4,5,6)
summary(y)

{x <- 1
y <- 2
x+y}

x <- 1; y <- 2; x+y
class(x)
class(as.integer(x))

{x <- 1
y <- 2
x+y}

# Irene Vrbik
# Studnet number 99999

3*(4-2)

4*5- 12^3 # be aware that - signs often paste funny into R and will lead to errors!
exp(3*4)
sin(4*pi-6)

x <- 4
x = 4
data = c(1,2,3)
data[0]

var1 <- FALSE
class(var1)
var1 <- "FALSE"
class(var1)

class(var2 <- T)
class(var3 <- 3^4 - 10)
class(var4 <- "Hello World")


var1 <- F
var2 <- "FALSE"
typeof(var1)
typeof(var2)
!var1

cond1 <- T
cond2 <- T
if (cond1) {
  2 +3 
} else if (cond2) {
  6
} else {
  print("garbage collection")
}

doubleNum <- function(x){
  x <- x*2
  return(x)
}

x <- 4
x <- x + 3

for (i in seq(1,10)){
  print(i)
}

doubleNum <- function(num) {
  # Return number doubled
  num <- num * 2
  #print(paste("Num:",num))
  return(num)
}


######## print even numbers
isEven <- function(x){
  if ((x %% 2) == 0)
    print(x)
}

printEven <- function(num) {  
  for (i in seq(num,num+20)){
    isEven(i)  
  }
}
printEven(5)

############## reading in files

adat <- read.csv("/Users/ivrbik/Dropbox/Teaching/UBCO/Data570/Lectures/03SimpleLinearRegression/Advertising.csv", header=TRUE)
dat <- read.csv("/Users/ivrbik/Dropbox/Teaching/UBCO/Data301/Irenes_301_Slides/08Python/data.csv", header = FALSE)

empty <- c()
alt <- NULL

# this is a comment
4*5-12^3
exp(4*3)
sin(4*pi-6)

var1 <- TRUE
var2 <- F
var3 <- 3^4 - 10
class(var3)
typeof(var3)
var4 <- "irene"
typeof(var4)
var5 <- 1:2
var6 <- 2
class(var6)




x <- 2
if (x>1){
  print("more than one")
} else if (x>2){
  print("more than two")
} else if (x>3){
  print("mor than 3")
} else {
  print("less than one")
}



doubleNum <- function(num){	
  # Return number doubled
  num <- num * 2  
  print(paste("Num:",num))
  return (num)
}


n = 20				
print(doubleNum(n))		

