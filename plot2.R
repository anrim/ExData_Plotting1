source("load.R")

# Load data
df <- loadHCPData()

# Create plot of global active power over days and save to PNG
png(filename="plot2.png", width=480, height=480)
plot(df$DateTime, 
     df$Global_active_power,
     ylab="Global Active Power (kilowatts)",
     xlab="",
     type="l")
dev.off()