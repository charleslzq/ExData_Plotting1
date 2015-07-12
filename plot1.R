data1 <- read.table("household_power_consumption.txt", header = TRUE, sep=";",stringsAsFactors = FALSE);
data1$Date<-as.Date(data1$Date, "%d/%m/%Y");
data2007<-data1[data1$Date>="2007-02-01"&data1$Date<="2007-02-02",];
data2007$Global_active_power<-as.numeric(data2007$Global_active_power);
png(filename="plot1.png");
hist(data2007$Global_active_power, col="RED", xlab="Global Active Power(kilowatts)", main="Global Active Power");
dev.off();

