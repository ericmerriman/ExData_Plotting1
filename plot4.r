read.table("household_power_consumption.txt",header=TRUE,sep=";")->abcd
abcd$DateTime <- as.POSIXct(paste(abcd$Date, abcd$Time), format="%d/%m/%Y %H:%M:%S")
par(mfcol = c(2,2))
plot(abcd$DateTime, abcd$Global_active_power, type="n", xlab="",ylab="Global Active Power (kilowatts)")
lines(abcd$DateTime, abcd$Global_active_power, type="l")
read.table("household_power_consumption.txt",header=TRUE,sep=";")->abcd
abcd$DateTime <- as.POSIXct(paste(abcd$Date, abcd$Time), format="%d/%m/%Y %H:%M:%S")
##rbind(cbind(as.POSIXct(abcd$DateTime),abcd$Sub_metering_1),cbind(as.POSIXct(abcd$DateTime),abcd$Sub_metering_2),
##cbind(as.POSIXct(abcd$DateTime),abcd$Sub_metering_3))->bn
##g<-gl(3,2880,labels=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(abcd$DateTime,abcd$Sub_metering_3,type="n", xlab="",ylab="Energy Sub Metering")
plot(abcd$DateTime,abcd$Sub_metering_2,type="n", xlab="",ylab="Energy Sub Metering")
plot(abcd$DateTime,abcd$Sub_metering_1,type="n", xlab="",ylab="Energy Sub Metering")
lines(abcd$DateTime,abcd$Sub_metering_3,col="blue")
lines(abcd$DateTime,abcd$Sub_metering_2,col="red")
lines(abcd$DateTime,abcd$Sub_metering_1,col="black")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),pch=paste("-"),col=c("black","red","blue"))
dev.copy(png, file = "plot4.png")
dev.off() 