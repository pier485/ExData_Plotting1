##
## Coursera Data Science Specialization: Exploratory Data Analysis
## Assignment 1: Electric power consumption
## Pierluigi Grillo
## 2016-01-23
##

##
## Load data from file
##

require(sqldf)
mydata <- read.csv.sql("household_power_consumption.txt",
                       "select * from file where Date = '1/2/2007' or Date = '2/2/2007'",
                       sep = ';',
                       header=TRUE)
mydata$Date <- strptime(paste(mydata$Date, mydata$Time), '%d/%m/%Y %H:%M:%S')
mydata$Time <- NULL # remove Time column, the complete date is in the Date column