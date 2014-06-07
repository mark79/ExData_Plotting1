#This code generates plot 1 given that the data is unziped in the current working directory
hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
shpc<-subset(hpc,hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007")

shpc$DateTime<-paste(shpc$Date,shpc$Time)
shpc$DateTime<-strptime(shpc$DateTime,format="%d/%m/%Y %H:%M:%S")

png("plot2.png")
  plot(shpc$DateTime,shpc$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()