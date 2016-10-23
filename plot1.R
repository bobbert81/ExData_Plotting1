
setwd("C:/Rob/courses etc/Data Science/Exploratory/project 1")
myData <- read.table("household_power_consumption.txt",sep = ";",dec=",",header=TRUE,stringsAsFactors = FALSE)
daysdata <- subset(myData,Date=="1/2/2007" | Date == "2/2/2007")
daysdata$Date <- as.Date(daysdata$Date, "%d/%m/%Y")
daysdata$Global_active_power <- as.numeric(daysdata$Global_active_power)
hist(daysdata$Global_active_power,main ="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.copy(png,'plot1.png', width=480, height=480)
dev.off()