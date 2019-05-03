rm(list=ls())
setwd("C:/Projects/coursera/")

Data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
Plot_Data <- Data[Data$Date %in% c("1/2/2007","2/2/2007"),]
rm(Data)

## set the date and time variable
SetTime <-strptime(paste(Plot_Data$Date, Plot_Data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
Plot_Data <- cbind(Plot_Data, SetTime)

## Plot 1
png("plot1.png",width=480,height=480)
  hist(Plot_Data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()