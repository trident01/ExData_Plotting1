fullData <- read.csv("~/Programming/Coursera/Exploratory Data Analysis/household_power_consumption.txt", sep = ";")

sData <- fullData[fullData$Date == "1/2/2007" | fullData$Date == "2/2/2007",]
t <- strptime(paste(sData$Date, sData$Time), format = "%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png")
plot(t, as.numeric(as.character(sData$Global_active_power)), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()