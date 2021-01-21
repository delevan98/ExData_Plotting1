setwd("D://Documents//coursera-stuff/eda_project1//ExData_Plotting1/")

df <- read.table("D://Documents//coursera-stuff//household_power_consumption.txt", sep=";", na.string='?', header = TRUE)

date_split <- df[df$Date == "1/2/2007" | df$Date == "2/2/2007", ]

png(filename="plot1.png")

with(date_split, hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)"))

dev.off()
