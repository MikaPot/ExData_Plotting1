## open a file connection
conn <- file("household_power_consumption.txt", open="rt")

## find when the date 2007-02-02 begins
x <- TRUE
skip <- 0
while(x){
	x<-!grepl("1/2/2007", readLines(conn, n=1))
	skip <- skip+1
}

## find when the date 2007-02-02 ends
nrow <- 0
x<-TRUE
while(x){
	x<-!grepl("3/2/2007", readLines(conn, n=1))
	nrow <- nrow+1
}

## close a file connection
close(conn)

## read the data from 2007-02-01 to 2007-02-02
consump <- read.table("household_power_consumption.txt", 
			sep=";", skip=skip, nrow=nrow-1, na.strings="?"))

## change column names 
names(consump) <- read.table("household_power_consumption.txt", 
			sep=";", nrow=1, stringsAsFactors=FALSE)

## convert the data and time variable to date/time classes
consump <- within(consump, {
			date_time=strptime(paste0(Date, Time),"%d/%m/%Y%H:%M:%S")
			Date=as.Date(date_time)
			Time=date_time
			rm(date_time)
			})