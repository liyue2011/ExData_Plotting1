housingdata<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

data02012017<-housingdata[housingdata$Date=="1/2/2007",]
data02022017<-housingdata[housingdata$Date=="2/2/2007",]
seldata<-rbind(data02012017,data02022017)

hist(seldata$Global_active_power,col="red", main = "Global Active Power", xlab="Global_active_power (kilowatts)")
