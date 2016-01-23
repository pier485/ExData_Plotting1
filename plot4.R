##
## Coursera Data Science Specialization: Exploratory Data Analysis
## Assignment 1: Electric power consumption
## Pierluigi Grillo
## 2016-01-23
##

##
## Plot of: Global active power, Energy sub metering, Voltage, Global reactive power
##

source("loadData.R")

png('plot4.png')

par(mfrow=c(2,2), mar=c(5,5,2,1), oma=c(1,1,2,1))

with(mydata,
     {
         plot(Date, Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatts)', type='l')

         plot(Date, Voltage, xlab = 'datetime', ylab = 'Voltage', type='l')
         
         plot(Date, Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type='l')
         points(Date, Sub_metering_2, type='l', col='red')
         points(Date, Sub_metering_3, type='l', col='blue')
         legend('topright', legen=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty = c(1,1,1))

         plot(Date, Global_reactive_power, xlab='datetime', ylab = 'Global reactive Power (kilowatts)', type='l')
     }
)

dev.off()