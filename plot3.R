##
## Coursera Data Science Specialization: Exploratory Data Analysis
## Assignment 1: Electric power consumption
## Pierluigi Grillo
## 2016-01-23
##

##
## Plot of Energy sub metering
##

source("loadData.R")

png('plot3.png')

with(mydata,
    {
        plot(Date, Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type='l')
        points(Date, Sub_metering_2, type='l', col='red')
        points(Date, Sub_metering_3, type='l', col='blue')
    }
)

legend('topright', legen=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty = c(1,1,1))

dev.off()