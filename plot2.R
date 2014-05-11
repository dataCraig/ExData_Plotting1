hpc = read.csv('household_power_consumption.txt', sep=';')
hpc$Date = as.Date(hpc$Date,'%d/%m/%Y')
s1 = subset(hpc, Date ==as.Date('2007/02/01',"%Y/%m/%d")) 
s2 = subset(hpc, Date == as.Date('2007/02/02',"%Y/%m/%d"))
s = rbind(s1,s1)
s$Global_active_power = as.character(s$Global_active_power)
s$Global_active_power = as.numeric(s$Global_active_power)

ts.plot(s$Global_active_power, col='black', main='', ylab='Global Active Power (kilowatts)', xlab='')
dev.copy(png, file = "plot2.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!