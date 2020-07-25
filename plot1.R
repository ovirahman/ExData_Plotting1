#plot1

library(dplyr)
par(mfcol = c(1,1))

#reading data
data <- filter(read.table(file = "household_power_consumption.txt", 
                          sep = ";", stringsAsFactors = F, header = T, 
                          na.strings = "?"), 
               Date == "1/2/2007" | Date == "2/2/2007")



hist(data$Global_active_power, col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

dev.copy(png, file = "plot1.png")
dev.off()

