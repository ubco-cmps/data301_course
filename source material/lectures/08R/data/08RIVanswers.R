# R partIV

setwd("~/Dropbox/Teaching/UBCO/Data301/Irenes_301_Slides/09R/")
car_data <- read.csv("car_data.csv")


###########################
# R syntax Exercise
###########################

mu0 = 10
car_data <- read.csv("data/car_data.csv")# read in the data
t.test(x=car_data$km.L, alternative="less",mu=mu0)
t.test(x=car_data$km.L, alternative="greater",mu=mu0)

###########################
# t test Questions
###########################

# Question 1.
t.test(x = car_data$Distance, alternative = "less", mu = 450)
# since pval is smalll there is significant evidence that the mean distance at each fill up is less than 450.
hist(car_data$Distance)
abline(v=450, lwd=2, col=2)
boxplot(car_data$Distance)
abline(h=450)

# Question 2. 
# create a new column with the year
strsplit(as.character(car_data[,1]),"-")
car_data$Year <- as.numeric(sapply(as.character(car_data[,1]), function(x) strsplit(x,"-")[[1]][1]))
t.test(Distance~Year, data = car_data, alternative = c("two.sided"),mu = 0, paired = FALSE)
# since pval is greater than alpha-level = 0.05, we fail to reject the null.  There is insufficient evidence to suggest that the mean distance differs for 2015 and 2016 cars.

# useful plot:
boxplot(Distance~Year, data = car_data)


##########################
# fitting a linear model #
##########################

mod <- lm(km.L~Litres+Distance, data=car_data)
summary(mod)

mod$coefficients
residuals(model)

# useful plots:
plot(mod)

## advanced aside note:
library("scatterplot3d")
scatterplot3d(car_data$km.L, y=car_data$Litres, z=car_data$Distance)

