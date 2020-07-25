
##plot4
library(dplyr)
par(mfcol = c(1,1))

#reading data
data <- filter(read.table(file = "household_power_consumption.txt", 
                          sep = ";", stringsAsFactors = F, header = T, 
                          na.strings = "?"), 
               Date == "1/2/2007" | Date == "2/2/2007")




par(mfcol = c(2,2))

#1st plot
plot(data$Global_active_power, type = "l", xaxt = "none",
     ylab = "Global Active Power (kilowatts)", xlab = "")
axis(1, c(0,1440,2880), c("Thu", "Fri", "Sat"))

#2nd plot
plot(data$Sub_metering_1, type = "l", xaxt = "none", 
     xlab = "", ylab = "Energy sub metering")

lines(data$Sub_metering_2 , col = "red")
lines(data$Sub_metering_3, col = "blue")
axis(1, c(0,1440,2880), c("Thu", "Fri", "Sat"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_3", "Sub_metering_3"),
       lty = 1, col = c("black", "red", "blue"),cex = 0.5, bty = "n")

#3rd plot
plot(data$Voltage, type = "l", xaxt = "none", 
     xlab = "datetime", ylab = "Voltage")
axis(1, c(0,1440,2880), c("Thu", "Fri", "Sat"))

#4th plot
plot(data$Global_reactive_power, type = "l", xaxt = "none", 
     xlab = "datetime", ylab = "Global_reactive_power")
axis(1, c(0,1440,2880), c("Thu", "Fri", "Sat"))

dev.copy(png, file = "plot4.png")
dev.off()

