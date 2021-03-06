
setwd("C:/Rob/courses etc/Data Science/Exploratory/project 1")
myData <- read.table("household_power_consumption.txt",sep = ";",dec=",",header=TRUE,stringsAsFactors = FALSE)
daysdata <- subset(myData,Date=="1/2/2007" | Date == "2/2/2007")
daysdata$Time <- paste(daysdata$Date,daysdata$Time,sep=" ")
daysdata$Time <- strptime(daysdata$Time, "%d/%m/%Y %H:%M:%S")
daysdata$Global_active_power <- as.numeric(daysdata$Global_active_power)
plot(daysdata$Time,daysdata$Global_active_power,type="n",ylab="Global Active Power (kilowatts)",xlab=" ")
lines(daysdata$Time,daysdata$Global_active_power)
dev.copy(png,'plot2.png', width=480, height=480)
dev.off()