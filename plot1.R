data <- read.table("./exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", header = TRUE, dec = ".", stringsAsFactors = FALSE)
dataSubset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
GlobalActivePower <- as.numeric(dataSubset$Global_active_power)
png(filename = "plot1.png", width = 480, height = 480)
hist(GlobalActivePower, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()