#Import files

household_power_consumption <- read.csv("~/Hopital/Hopital/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", na.strings="?")

#Convert var date

household_power_consumption$Date=as.Date(as.character(household_power_consumption$Date),"%d/%m/%Y")

#subset
hpc=subset(household_power_consumption, Date=="2007-02-01"|Date=="2007-02-02")
rm(household_power_consumption )

#plot 1

class(hpc$Global.active.power)
hist(hpc$Global_active_power,col="red",main="Global active power")

