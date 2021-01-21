setwd("D://Documents//coursera-stuff//eda_project1//ExData_Plotting1/")

df <- read.table("D://Documents//coursera-stuff//household_power_consumption.txt", sep=";", na.string='?', header = TRUE)

date_split <- df[df$Date == "1/2/2007" | df$Date == "2/2/2007", ]

png(filename="plot3.png")

with(date_split, plot(strptime(time,format="%d/%m/%Y %H:%M:%S"), Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))

with(date_split, lines(strptime(time,format="%d/%m/%Y %H:%M:%S"), Sub_metering_2, type="l", col="red"))
with(date_split, lines(strptime(time,format="%d/%m/%Y %H:%M:%S"), Sub_metering_3, type="l", col="blue"))

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=c(1,1))

dev.off()
