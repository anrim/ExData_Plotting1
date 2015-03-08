source("load.R")

# Load data
df <- loadHCPData()

# Create histogram of gloabl active power and save as PNG
png(filename='plot1.png', width=480, height=480)
hist(df$Global_active_power, 
     col="#ff2500", 
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")
dev.off()