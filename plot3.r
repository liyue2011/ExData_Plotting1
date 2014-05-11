housingdata<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

data02012017<-housingdata[housingdata$Date=="1/2/2007",]
data02022017<-housingdata[housingdata$Date=="2/2/2007",]
seldata<-rbind(data02012017,data02022017)

as.Date(seldata[,1],format="%d/%m/%Y")

timedata<-strptime(paste(seldata[,1],seldata[,2]),format="%d/%m/%Y %H:%M:%S")

plot(timedata, seldata$Sub_metering_1,type="l", col ="grey", ylab="Energy sub metering", xlab="")
points(timedata, seldata$Sub_metering_2,type="l", col ="red", ylab="Energy sub metering", xlab="")
points(timedata, seldata$Sub_metering_3,type="l", col ="blue", ylab="Energy sub metering", xlab="")
legend("topright",lwd=c(2.5,2.5),col=c("grey","red","blue"),legend= c("sub_metering_1","sub_metering_2","sub_metering_3"))
