# Data 301 - Lab 8

#### QUESTION 1 - READING AND SUMMARIZING DATA ####

# read data in from csv file into a data from sensors
sensors <- read.csv('sensor.csv', header = T, sep = ",")
head(sensors, 20)

# Create a dataset called sensors_clean that contains only those observations where value is between 0 and 100 inclusive
sensors_clean <- subset(sensors, value >=0 & value <=100)

# create a list with count, max, min, mean, median, sum and range of readings
count_read <- length(sensors_clean$value)
min_read <- min(sensors_clean$value)
mean_read <-mean(sensors_clean$value)
range_read <- range(sensors_clean$value)

max_2 = max(subset(sensors_clean, siteid == 2)$value)
num_12 = length(subset(sensors_clean, siteid == 1 & sensorid == 2)$value)

data_summary = list(count_read = count_read, min_read = min_read, mean_read =  mean_read, 
                    range_read = range_read, max_2 = max_2, num_12 = num_12)
data_summary


# ggplot histogram
library(ggplot2)
ggplot(sensors_clean, aes(x = value)) + geom_histogram(color = 'mediumvioletred', fill= 'mediumaquamarine') + 
  xlab("Sensor Value") + ylab("Count") + ggtitle("Histogram of Sensor Values")

# ggplot boxplot
ggplot(sensors_clean, aes(x = as.factor(sensorid), y = value)) + geom_boxplot() +
  xlab("Sensor Id") + ylab("Reading")+ ggtitle("Boxplot of Reading Values from Sensors")

# Alternative using built-in hist and boxplot
# draw a histogram and a boxplot
hist(sensors_clean$value)

# boxplot of just sensor ids
boxplot(value~sensorid, data = sensors_clean, main="Sensor Values by Sensor", xlab='Sensor ID', ylab='Reading')



#### QUESTION 2 - HYPOTHESIS TESTING ####

# Null Hypothesis: mean sensor value = 45
# Alternative Hypothesis: mean sensor value < 45

# T-test: check if mean value is less than 45
t.test(sensors_clean$value, alternative = 'less', mu=45)

## REJECT NULL HYPOTHESIS.
## There is evidence suggesting that true mean sensor value is less than 45.

  




#### QUESTION 3 - HYPOTHESIS TESTING ####

# T-test to check if there is a difference between site 1 and site 2
# make a dataframe with just siteid = 1 and 2
new_data <- subset(sensors_clean, siteid==1 | siteid==2)
head(new_data, 15)

# Null Hypothesis: mean sensor value for site 1 = mean sensor value for site 2
# Alternative Hypothesis: mean sensor value for site 1 != mean sensor value for site 2
t.test(value~siteid, data = new_data)

## FAIL TO REJECT NULL HYPOTHESIS.
## There is no evidence suggesting that mean sensor value for site 1 is different than the mean sensor value for site 2.




#### QUESTION 4 - LINEAR MODELS ####

# read in data
advertising <- read.csv('advertising.csv', header = T, sep = ',')

# display last 15 rows
tail(advertising, 15)

attach(advertising)

# the three graphs, with sales as response/dependent variable (ie. on y axis)
plot(TV, Sales)
plot(Radio, Sales)
plot(Newspaper, Sales)


# Linear model predicting sales with TV budget
model1 <- lm(Sales~TV, data = advertising)    

# summary
summary(model1)

# plotting our line onto data
plot(TV, Sales, main="Sales Explained by TV Ads")
abline(model1, col='red')

# ggplot
ggplot(advertising, aes(TV, Sales)) + geom_point() + geom_smooth(method='lm')

