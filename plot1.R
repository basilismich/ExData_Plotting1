library("data.table")
data<-"household_power_consumption.txt"
electricDT<- fread(data,na.strings="?")
# Change Date Column to Date Type
electricDT[, Date := lapply(.SD, as.Date, "%d/%m/%Y"), .SDcols = c("Date")]

# we want from 2007-02-01 to 2007-02-02 , so we filter the dates
electricDT <- electricDT[(Date >= "2007-02-01") & (Date <= "2007-02-02")]

png("plot2.png", width=480, height=480)

##Finally  Plot 1
hist(electricDT[, Global_active_power], main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.off()
