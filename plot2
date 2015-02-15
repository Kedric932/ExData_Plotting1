#Import files

household_power_consumption <- read.csv("~/Hopital/Hopital/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", na.strings="?")

#Convert var date

household_power_consumption$Date=as.Date(as.character(household_power_consumption$Date),"%d/%m/%Y")

#subset
hpc=subset(household_power_consumption, Date=="2007-02-01"|Date=="2007-02-02")
rm(household_power_consumption )
hpc$day=format(hpc$Date,"%a")


#plot 2
png(filename = "Plot2.png",width = 480, height = 480)

pos_lab_x=c(1,1441,2881)
lab_x=c("Thu","Fri","Sat")
plot(hpc$Global_active_power,type="l",xaxt = "n",xlab=" ",xlim=c(1,2881),ylab = "Global Active Power (kilowatts)",xaxt = "n")
axis(1, at=pos_lab_x ,labels = lab_x,  cex.axis = 0.8)


dev.off()
