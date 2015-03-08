source("load.R")

# Load data
df <- loadHCPData()

# Save to PNG
png(filename="plot4.png", width=480, height=480)

## Layout plots 2x2
par(mfrow=c(2,2))

# Plot of global active power (top left)
plot(df$DateTime, 
     df$Global_active_power,
     ylab="Global Active Power",
     xlab="",
     type="l")

# Plot of voltage (top right)
plot(df$DateTime,
     df$Voltage,
     xlab='datetime',
     ylab='Voltage',
     type='l')

# Plot of energy sub metering (bottom left)
plot(df$DateTime,
     df$Sub_metering_1,
     xlab="",
     ylab="Energy sub metering",
     type="l")

lines(df$DateTime, df$Sub_metering_2, type="l", col="red")
lines(df$DateTime, df$Sub_metering_3, type="l", col="blue")

legend("topright",
       bty = "n",
       lty=1,
       col=c("black","red","blue"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Plot of global reactive power (bottom right)
plot(df$DateTime,
     df$Global_reactive_power,
     xlab='datetime',
     ylab='Global_reactive_power',
     type='l')

dev.off()
