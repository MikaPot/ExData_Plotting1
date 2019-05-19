1. Memory Requirements
The dataset has 2,075,259 rows and 9 columns. 
Numeric vectors occupy 8 bytes for every element.
1GB is 1024 bytes.
The rough estimate of memory required to read the data is below. 
2,075,259(rows) * 9(columns) * 8(bytes/numeric) / 1024^3 = 0.139157
Most modern computers have at least 2GB RAM and are fine.

2. Read the data from the specific dates
I'll only read the data from the dates 2007-02-01 and 2007-02-02
rather than reading the entire dataset in R.
The function read.table has the arguments "skip" and "nrow"
which	specify how many lines to skip before reading and 
how many lines to read.
LoadData.R uses grepl and readLines to read one line of the data
at a time and find the dates 2007-02-01 and 2007-02-02.
The script reads only the necessary data from the file and
store the data to variable consump.
Be sure to your working directory is "ExData_Plotting1-master",
ans write the below command in your console.
> source("LoadData.R")

3. Convert the Date and Time classes in R using the strptime and
as.Date functions
This is included in LoadData.R script.
The Date and Time varibles are date and POSIXlt type.

4. Missing values coded as ?
This is included in LoadData.R script.
The na.strings parameter is set to "?".