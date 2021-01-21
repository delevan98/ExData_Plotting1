setwd("D://Documents//coursera-stuff//eda_project1//ExData_Plotting1/")

df <- read.table("D://Documents//coursera-stuff//household_power_consumption.txt", sep=";", na.string='?', header = TRUE)

date_split <- df[df$Date == "1/2/2007" | df$Date == "2/2/2007", ]

time <- paste(date_split$Date, date_split$Time, sep=" ")

png(filename = "plot2.png")

with(date_split, plot(strptime(time,format="%d/%m/%Y %H:%M:%S"), Global_active_power, 
                      type="l", xlab="", ylab="Global Active Power (kilowatts)"))

dev.off()
