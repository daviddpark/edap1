#source("common.R")
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2), lty='solid')
with(ds0207, {
    plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
    plot(datetime, Voltage, type="l")
    plot(datetime, Sub_metering_1, type="l", xlab="", col="black", ylab="Energy sub metering")
    lines(datetime, Sub_metering_2, type="l", xlab="", col="red")
    lines(datetime, Sub_metering_3, type="l", xlab="", col="blue")
    legend("topright", bty="n", lty=c(1,1), col=c("black","red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(datetime, Global_reactive_power, type="l")
})
dev.off()
