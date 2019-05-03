rm(list=ls())
setwd("C:/Projects/coursera/")

Data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
Plot_Data <- Data[Data$Date %in% c("1/2/2007","2/2/2007"),]
rm(Data)

## set the date and time variable
SetTime <-strptime(paste(Plot_Data$Date, Plot_Data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
Plot_Data <- cbind(Plot_Data, SetTime)

## Plot 4
png("plot4.png",width=480,height=480)
  par(mfrow=c(2,2))
  
  plot(Plot_Data$SetTime, Plot_Data$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power")
  
  plot(Plot_Data$SetTime, Plot_Data$Voltage, type="l", col="black", xlab="datetime", ylab="Voltage")
  
  labels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
  linecolors <- c("black","red","blue")
  plot(Plot_Data$SetTime, Plot_Data$Sub_metering_1, type="l", col=linecolors[1], xlab="", ylab="Energy sub metering")
  lines(Plot_Data$SetTime, Plot_Data$Sub_metering_2, type="l", col=linecolors[2])
  lines(Plot_Data$SetTime, Plot_Data$Sub_metering_3, type="l", col=linecolors[3])
  legend("topright", bty="n",legend=labels, lty="solid",col=linecolors)

  plot(Plot_Data$SetTime, Plot_Data$Global_reactive_power, type="l", col="black", xlab="datetime", ylab="Global_reactive_power")
dev.off()