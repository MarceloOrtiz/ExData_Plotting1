data <- read.table(file = "household_power_consumption.txt",
	sep = ";", nrows = 2880, skip = 66637)

data$V10 <- strptime(paste(data$V1,data$V2),"%d/%m/%Y %H:%M:%S")

hist(data$V3, xlab = "Global Active Power(kilowatts)",
	 main = "Global Active Power", col = "red")

dev.copy(png, file = "plot1.png")
dev.off()