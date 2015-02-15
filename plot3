#Import files

household_power_consumption <- read.csv("~/Hopital/Hopital/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", na.strings="?")

#Convert var date

household_power_consumption$Date=as.Date(as.character(household_power_consumption$Date),"%d/%m/%Y")

#subset
hpc=subset(household_power_consumption, Date=="2007-02-01"|Date=="2007-02-02")
rm(household_power_consumption )
hpc$day=format(hpc$Date,"%a")


#plot 3

pos_lab_x=c(1,1441,2881)
lab_x=c("Thu","Fri","Sat")

png(filename = "Plot3.png",width = 480, height = 480)

matplot(hpc[,7:9], type = "l",
        lty=rep("solid",3),
        lwd = 1,
        cex = 0.8,
        col = c("black","red", "blue"), 
        ylab = "Energy sub mettering",
        xaxt = "n"
)

axis(1, at=pos_lab_x ,labels = lab_x,  cex.axis = 0.8)

legend("topright",
       legend = colnames(hpc[,7:9]),
       col = c("black","red", "blue"),
       lty = 1, 
       pt.cex = 2, 
       cex = 0.8, 
       text.col = "black", 
       horiz = FALSE
)

dev.off()
