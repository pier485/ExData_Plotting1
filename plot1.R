##
## Coursera Data Science Specialization: Exploratory Data Analysis
## Assignment 1: Electric power consumption
## Pierluigi Grillo
## 2016-01-23
##

##
## Histogram of Global Active Power
##

source("loadData.R")

png('plot1.png')
hist(mydata$Global_active_power, col = 'red', xlab = 'Global Active Power (kilowatts)', main='Global Active Power')
dev.off()