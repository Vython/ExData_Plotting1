energy<-read.csv("C:/Users/VMSG/Desktop/PARALELOS/ESDA R COURSERA/household_power_consumption.txt",header=TRUE, sep=";", dec=".")
energy$D<-as.Date(energy$Date,format="%d/%m/%Y")
energy$T<-strptime(energy$Time,format="%H:%M:%S")
energ2<-subset(energy,energy$D>"2007-01-31"& energy$D<"2007-02-03")
hist(x=as.numeric(energ2$Global_active_power),main="Global Active Power",col="red",xlab="Global Active Power (Watts)",ylab="Frequencies",xlim=range(c(0,3000)))
