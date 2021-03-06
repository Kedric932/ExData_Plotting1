#Import files

household_power_consumption <- read.csv("~/Hopital/Hopital/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";", na.strings="?")

#Convert var date

household_power_consumption$Date=as.Date(as.character(household_power_consumption$Date),"%d/%m/%Y")

#subset
hpc=subset(household_power_consumption, Date=="2007-02-01"|Date=="2007-02-02")
rm(household_power_consumption )
hpc$day=format(hpc$Date,"%a")


#For 4 plot 2*2
png(filename = "Plot4.png",width = 480, height = 480)

par(mfcol = c(2,2)) 

# Plot 1 to 4

          #plot1 on 4
          plot(hpc$Global_active_power,type="l",xaxt = "n",xlab=" ",xlim=c(1,2881),ylab = "Global Active Power (kilowatts)",xaxt = "n")
          axis(1, at=pos_lab_x ,labels = lab_x,  cex.axis = 0.8)

          #plot2 on 4
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

          #plot3 on 4
          plot(hpc$Voltage,type="l",xaxt = "n",xlim=c(1,2881),ylab = "Voltage",xlab="datetime")
          axis(1, at=pos_lab_x ,labels = lab_x,  cex.axis = 0.8)
          
          #plot4 on 4
          plot(hpc$Global_reactive_power,type="l",lwd=1,xaxt = "n",xlim=c(1,2881),ylab = "Global_reactive_power",xlab="datetime")
          axis(1, at=pos_lab_x ,labels = lab_x,  cex.axis = 0.8)


dev.off()

