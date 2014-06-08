data <- read.table(file = "household_power_consumption.txt",
	sep = ";", nrows = 2880, skip = 66637)

data$V10 <- strptime(paste(data$V1,data$V2),"%d/%m/%Y %H:%M:%S")

plot(data$V10,data$V3, type = "l", xlab ="", ylab = "Global Active Power(kilowatts)")

dev.copy(png, file = "plot2.png")
dev.off()
