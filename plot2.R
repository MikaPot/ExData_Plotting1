## Read the data
source("LoadData.R")


png(filename="plot2.png", width=480, height=480)

with(consump, plot(Time, Global_active_power,
	ylab="Global Active Power (kilowatts)",
	xlab=NULL,
	type="l"
	))

dev.off()