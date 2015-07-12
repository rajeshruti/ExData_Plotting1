hpc <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
hpc <- transform(hpc, Date = as.Date(Date, format = "%d/%m/%Y"))
hpc <- subset(hpc, Date %in% c(as.Date("2007-02-01", format = "%Y-%m-%d"), 
                               as.Date("2007-02-02", format = "%Y-%m-%d")))

png(file = "plot1.png", width = 480, height = 480)
hist(hpc$Global_active_power, xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency", col = "red", main = "Global Active Power")
dev.off()