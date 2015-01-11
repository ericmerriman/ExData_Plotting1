read.table("household_power_consumption.txt",header=TRUE,sep=";")->abcd
abcd$DateTime <- as.POSIXct(paste(abcd$Date, abcd$Time), format="%d/%m/%Y %H:%M:%S") 
plot(abcd$DateTime, abcd$Global_active_power, type="n", xlab="",ylab="Global Active Power (kilowatts)")
lines(abcd$DateTime, abcd$Global_active_power, type="l")
dev.copy(png, file = "plot2.png")
dev.off() 