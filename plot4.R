## Read the data
source("LoadData.R")

png(filename="plot4.png", width=480, height=480)

par(mfrow=c(2,2))

with(consump, plot(Time, Global_active_power,
	ylab="Global Active Power (kilowatts)",
	xlab=NULL,
	type="l"
	))

with(consump, plot(Time, Voltage,
	xlab="datetime",
	type="l"
	))

with(consump, {plot(Time, Sub_metering_1,
		ylab="Energy sub metering",
		xlab=NULL,
		type="l"
		)
	points(Time, Sub_metering_2, type="l", col="red")
	points(Time, Sub_metering_3, type="l", col="blue")
	sub <- c("Sub_metering_1",
		   "Sub_metering_2",
		   "Sub_metering_3")
	color <- c("black", "red", "blue")
	legend("topright", sub, lwd=1, col=color, bty="n") 
})

with(consump, plot(Time, Global_reactive_power,
	xlab="datetime",
	type="l"
	))

dev.off()