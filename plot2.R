# R Code for Plot2.png

data <- read.csv("./data/household_power_consumption.txt",sep = ";",na.strings = "?", stringsAsFactors = FALSE)
nrow(data);ncol(data)
names(data)
data$Date = as.Date(data$Date,"%d/%m/%Y")
reqdata <- subset(data,Date>="2007-2-1" & Date <= "2007-2-2")
reqdata$datetime <- as.POSIXct(paste(reqdata$Date, reqdata$Time))
head(reqdata)
png(filename = "plot2.png",height = 480,width = 480)
plot(reqdata$datetime,reqdata$Global_active_power,type='l',ylab = "Global Active Power (Kilowatts)",
     xlab = "")
dev.off()