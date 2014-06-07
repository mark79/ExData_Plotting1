#This code generates plot 1 given that the data is unziped in the current working directory
hpc<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
shpc<-subset(hpc,hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007")
png("plot1.png")
  hist(shpc$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (Kilowatts)")
dev.off()