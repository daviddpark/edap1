data_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
data_zipfile <- "hpc.zip"

if (!file.exists("data")) {
  dir.create("data")
}

setwd("./data")

if (!file.exists(data_zipfile)) {
  download.file(data_url, destfile=data_zipfile, method="curl")
  unzip(data_zipfile)
}

setAs("character","dmY", function(from) as.Date(from, format="%d/%m/%Y"))

ds <- read.table("household_power_consumption.txt", header=TRUE, nrows=2100000, sep=";", na.strings=c("?"), colClasses=c('dmY', 'character', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric'))

ds0207 <- ds[which(ds$Date >= as.Date("2007-02-01") & ds$Date <= as.Date("2007-02-02")),]
ds0207$datetime <- strptime(paste(format(ds0207$Date, "%Y-%m-%d"), ds0207$Time), format="%Y-%m-%d %H:%M:%S")

setwd("..")
