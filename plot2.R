##
## Coursera Data Science Specialization: Exploratory Data Analysis
## Assignment 1: Electric power consumption
## Pierluigi Grillo
## 2016-01-23
##

##
## Plot of Global Active Power during the days
##

source("loadData.R")

png('plot2.png')
with(mydata, plot(Date, Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatts)', type='l'))
dev.off()