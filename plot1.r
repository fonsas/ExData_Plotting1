data<-read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
data$Date<-as.Date(data$Date,format='%d/%m/%Y')
dataFinal<-subset(data,Date%in%as.Date(c("2007-02-01","2007-02-02")))
png("plot1.png", width=480, height=480)
hist(dataFinal$Global_active_power,xlab="Global Active Power (kilowatts)",ylab="Frequency",col="red",main="Global Active Power")
dev.off()

