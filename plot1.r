read.table("household_power_consumption.txt",header=TRUE,sep=";")->abcd
as.Date(abcd$Date, "%d/%m/%Y")=="2007-02-02"|as.Date(abcd$Date, "%d/%m/%Y")=="2007-02-01"
hist(abcd$Global_active_power,xlab="Global Active Power (kilowatts)",
     ylab="Frequency", col="red", main = "Global Active Power")->p
dev.copy(png, file = "plot1.png")
dev.off() 
