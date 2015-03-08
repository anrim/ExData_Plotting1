loadHCPData <- function () {
  if (!file.exists("data.zip")) {
    download.file(url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                  destfile="data.zip",
                  method="curl")
    unzip("data.zip")  
  }
  
  # Read data
  df <- read.table("household_power_consumption.txt",
                     header=TRUE,
                     sep=";",
                     na.strings="?",
                     colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

  # Select 2007-02-01 and 2007-02-02
  df <- df[(df$Date == "1/2/2007") | (df$Date == "2/2/2007"),]
  
  # Convert to date & time
  df$DateTime <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
  
  df
}


