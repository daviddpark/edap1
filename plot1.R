source("common.R")
png("plot1.png", width=480, height=480)
hist(ds0207$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
