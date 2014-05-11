housingdata<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

data02012017<-housingdata[housingdata$Date=="1/2/2007",]
data02022017<-housingdata[housingdata$Date=="2/2/2007",]
seldata<-rbind(data02012017,data02022017)

as.Date(seldata[,1],format="%d/%m/%Y")

timedata<-strptime(paste(seldata[,1],seldata[,2]),format="%d/%m/%Y %H:%M:%S")

plot(timedata, seldata$Global_active_power,type="l", ylab="Global Active Power (kilowatts)", xlab="")

