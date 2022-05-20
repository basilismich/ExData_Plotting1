Exploratory Data Analysis Project 1
This assignment uses data from the UC Irvine Machine Learning Repository, a popular repository for machine learning datasets. In particular, we will be using the “Individual household electric power consumption Data Set” which I have made available on the course web site:

Dataset: Electric power consumption [20Mb]
Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

The four plots with their codes are shown below. 


# Plot 1
library("data.table")
data<-"household_power_consumption.txt"
electricDT<- fread(data,na.strings="?")
### Change Date Column to Date Type
electricDT[, Date := lapply(.SD, as.Date, "%d/%m/%Y"), .SDcols = c("Date")]

### we want from 2007-02-01 to 2007-02-02 , so we filter the dates
electricDT <- electricDT[(Date >= "2007-02-01") & (Date <= "2007-02-02")]

png("plot1.png", width=480, height=480)

###Finally  Plot 1
hist(electricDT[, Global_active_power], main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.off()

![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


### Plot 2

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


### Plot 3

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


### Plot 4

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 

