fullData <- read.csv("~/Programming/Coursera/Exploratory Data Analysis/household_power_consumption.txt", sep = ";")

sData <- fullData[fullData$Date == "1/2/2007" | fullData$Date == "2/2/2007",]

png(filename = "plot1.png")
hist(as.numeric(as.character(sData$Global_active_power)), breaks = 17, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()