# R partIII

setwd("~/Dropbox/Teaching/UBCO/Data301/Irenes_301_Slides/09R/")
car_data <- read.csv("car_data.csv")

#####################################################
######### Using the car data from the data.frame example, 
#        create a bar chart for the variable prov.
#####################################################

# one sample t-test
t.test(x=car_data$km.L, alternative=c("two.sided"), mu=10)

# if you want to call the variable names without the $,
# attach the dataset 

t.test(x=km.L,alternative=c("two.sided"), mu=10) # will error
attach(car_data)
t.test(x=km.L,alternative=c("two.sided"), mu=10) # will error

# two sample t-test
# Need to set active to be a factor first.
beaver2$activ = as.factor(beaver2$activ)

# Perform unpaired test
t.test(temp~activ, data=beaver2,
       alternative=c("two.sided"), mu=0,
       paired=FALSE)

# alternatively:
t.test(beaver2$temp[beaver2$activ==0],
       beaver2$temp[beaver2$activ==1],
       alternative=c("two.sided"), mu=0,
       paired=FALSE)


athlete = read.csv("athlete.csv", header=TRUE)

t.test(x = athlete$Time[athlete$Training==0], # times pre-training
       y = athlete$Time[athlete$Training==1], # times post-traing
       data=athlete,
       #alternative=c("two.sided")
       #mu=0, 
       paired=TRUE)

t.test(Time~Training, data=athlete,
       #alternative=c("two.sided")
        #mu=0, 
       paired=TRUE)

# alternatively:
attach(athlete)
t.test(Time[(Training==0)],Time[Training==1],
       alternative=c("two.sided"), mu=0, paired=TRUE)


# alternatively
t.test(Time[(Training==0)]-Time[Training==1],
       alternative=c("two.sided"), my=0)



# QUestion 1.
t.test(x = car_data$Distance, alternative = c("less"), mu = 450)
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

