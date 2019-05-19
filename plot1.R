## Read the data
source("LoadData.R")

png(filename="plot1.png", width=480, height=480)

hist(consump$Global_active_power, col="red", 
	main="Global Acitive Power",
	xlab="Global Active Power (kilowatts)",
	)

dev.off()