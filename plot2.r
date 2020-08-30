data<-read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
data$Date<-as.Date(data$Date,format='%d/%m/%Y')
dataFinal<-subset(data,Date%in%as.Date(c("2007-02-01","2007-02-02")))
dataFinal$datetime<-as.POSIXct(paste(dataFinal$Date,dataFinal$Time))
png("plot2.png", width=480, height=480)
plot(dataFinal$datetime,dataFinal$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type="l")
dev.off()

