##plot2

library(dplyr)
par(mfcol = c(1,1))

#reading data
data <- filter(read.table(file = "household_power_consumption.txt", 
                          sep = ";", stringsAsFactors = F, header = T, 
                          na.strings = "?"), 
               Date == "1/2/2007" | Date == "2/2/2007")


plot(data$Global_active_power, type = "l", xaxt = "none",
     ylab = "Global Active Power (kilowatts)", xlab = "")
axis(1, c(0,1440,2880), c("Thu", "Fri", "Sat"))

dev.copy(png, file = "plot2.png")
dev.off()
