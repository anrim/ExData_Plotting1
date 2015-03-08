source("load.R")

# Load data
df <- loadHCPData()

# Create plot of energy sub metering (1, 2, & 3) over days and save to PNG
png(filename="plot3.png", width=480, height=480)
plot(df$DateTime, df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(df$DateTime, df$Sub_metering_2, type="l", col="red")
lines(df$DateTime, df$Sub_metering_3, type="l", col="blue")
legend("topright",
       lty=1,
       col=c("black","red","blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()