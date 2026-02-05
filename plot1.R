# 1. Read data (handles missing values '?' automatically)
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)

# 2. Filter data for 2007-02-01 and 2007-02-02
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# 3. Open PNG device
png("plot1.png", width=480, height=480)

# 4. Create Plot
globalActivePower <- as.numeric(subSetData$Global_active_power)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

# 5. Close device (Important!)
dev.off()