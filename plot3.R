fullData <- read.csv("~/Programming/Coursera/Exploratory Data Analysis/household_power_consumption.txt", sep = ";")

sData <- fullData[fullData$Date == "1/2/2007" | fullData$Date == "2/2/2007",]
t <- strptime(paste(sData$Date, sData$Time), format = "%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png")
plot(t, as.numeric(as.character(sData$Sub_metering_1)), type = "l", xlab = "", ylab = "Energy Sub metering")
lines(t, as.numeric(as.character(sData$Sub_metering_2)), col = "red" )
lines(t, as.numeric(as.character(sData$Sub_metering_3)), col = "blue" )
legend("topright", col = c("black", "red", "blue"), lwd = 2,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()