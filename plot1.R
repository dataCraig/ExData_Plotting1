hpc = read.csv('household_power_consumption.txt', sep=';')
hpc$Date = as.Date(hpc$Date,'%d/%m/%Y')
s1 = subset(hpc, Date ==as.Date('2007/02/01',"%Y/%m/%d")) 
s2 = subset(hpc, Date == as.Date('2007/02/02',"%Y/%m/%d"))
s = rbind(s1,s1)
s$Global_active_power = as.character(s$Global_active_power)
s$Global_active_power = as.numeric(s$Global_active_power)

hist(s$Global_active_power, col='red', main='Global Active Power', xlab='Global Active Power (kilowatts)')
dev.copy(png, file = "..\\figure\\plot1.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!