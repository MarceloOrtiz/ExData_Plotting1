data <- read.table(file = "household_power_consumption.txt",
	sep = ";", nrows = 2880, skip = 66637)

data$V10 <- strptime(paste(data$V1,data$V2),"%d/%m/%Y %H:%M:%S")

with(data, plot(V10,V7, type = "l", xlab ="", ylab = "Energy sub metering"))
lines(data$V10,data$V8,type = "l", col="red")
lines(data$V10,data$V9,type = "l", col="blue")
legend("topright", pch = "_", col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))


dev.copy(png, file = "plot3.png")
dev.off()
