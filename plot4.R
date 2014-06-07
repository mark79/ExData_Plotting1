#This code generates plot 1 given that the data is unziped in the current working directory
hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
shpc<-subset(hpc,hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007")

shpc$DateTime<-paste(shpc$Date,shpc$Time)
shpc$DateTime<-strptime(shpc$DateTime,format="%d/%m/%Y %H:%M:%S")

png("plot4.png")
  par(mfrow=c(2,2))

  plot(shpc$DateTime,shpc$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

  plot(shpc$DateTime,shpc$Voltage,type="l",xlab="datetime",ylab="Voltage")

  plot(shpc$DateTime,shpc$Sub_metering_1 ,type="l",xlab="",ylab="Energy sub metering")
  points(shpc$DateTime,shpc$Sub_metering_2,type="l",col="red")
  points(shpc$DateTime,shpc$Sub_metering_3,type="l",col="blue")
  legend(x="topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),border=NULL,lty=c(1, 1, 1),bty="n",col=c("black", "red", "blue"))

  plot(shpc$DateTime,shpc$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")



dev.off()