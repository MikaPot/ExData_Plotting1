## Read the data
source("LoadData.R")


png(filename="plot3.png", width=480, height=480)

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
	legend("topright", sub, lwd=1, col=color) 
})

dev.off()