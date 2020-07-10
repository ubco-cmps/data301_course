
#########
# cant use bar with y aesthetic

library("ISLR")
library("ggplot2")
g = ggplot(Auto, aes(x=origin, y=mpg)) 

g + geom_point()
g + geom_bar(aes(fill=factor(origin))) 

 

library("ISLR")
ggplot(Auto, aes(x=origin)) + geom_bar(aes(fill=factor(origin))) +
  xlab("") + ylab("") + ggtitle("BARCHART")

# bar chart:
ggplot(Auto, aes(x=origin)) + geom_bar(aes(fill=factor(origin)))

# histogram with continutous data:
ggplot(Auto, aes(x=horsepower)) + geom_histogram(bins=30)

# histogram wont work on 
ggplot(Auto, aes(x=origin)) + geom_histogram(bins=30)
