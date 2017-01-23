data <- read.table("./exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", header = TRUE, dec = ".", stringsAsFactors = FALSE)
dataSubset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(dataSubset$Date, dataSubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
GlobalActivePower <- as.numeric(dataSubset$Global_active_power)
png(filename = "plot2.png", width = 480, height = 480)
plot(datetime, GlobalActivePower, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()