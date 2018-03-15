#   Do the following short exercise
# Remember to first chnage your working directory!
# This could be done using the 'setwd' function or 
# clicking on "Session", "Set Working directory",
# "To source file location" if you opened this file.
#===================================================

#1. Read in fuel-frame.csv and create an object named 'fuel'
#2. How many rows are there in the dataframe? (type ?nrow)
#3. How many columns are there? (type ?ncol)
#4. What is the Weight of the 40th car?
#5. What is the row name of the 55th car?
#6. Extract the 5th row from the data and create a new object named r5
#7. Extract the 4th column from the data (using only rows 10 to 22). 
#   Name the object c4
#8. Calculate is the five number summary of c4
#9. Create a plot with Fuel on the x axis and Mileage on the y axis

#10. Save the plot as a pdf file. 

  #Hint: ## start a PDF file
  #pdf("picture.pdf")
  ## your drawing commands here
  #
  ### close the PDF file
  #dev.off()

#11. create a matrix named m1 that contains 'Weight' and 'Disp.'
#12. Export m1 using write.table to m1.txt (?write.table)
#13. Export m1 using write.csv to m1.csv (?write.csv)
#14. Read up what 'sink' does.







# Solutions are at the bottom!
#===============================================================


#1
fuel<- read.csv("fuel-frame.csv", header=T)
fuel

#2. 
nrow(fuel)

#3. 
ncol(fuel)

#4.
attach(fuel) #Dont use attach - rather use reference $
Weight[40]

fuel$Weight[17]

#5.
row.names[55]

#6. 
r5<-fuel[5,]
r5

#7. 

c4<-fuel[10:20,4]
c4

#8.

fivenum(c4)

#9. 

plot(Fuel, Mileage)


#10. 

pdf("fuelplot.pdf",height=4,width=6)
plot(Fuel, Mileage)
dev.off()

#11.

m1<-cbind(Weight, Disp.)

#12.

?write.table
write.table(m1, "m1.txt")


#13. 

write.csv(m1, "m1.csv")

#14. 
?sink
sink("ReadWrite.txt")
#the following 'objects' will be saved in the file location
#not the creation of an object though
#only 'outputs' that would have otherwise been shown in the console
#window
#i.e. 'xx' and 'mean(xx)'
#yy is not in the file
#the first sink command indicates where to save the output
#while the second sink command closes the connection

xx<-1:5
cat("\n This is the value of xx", xx)

mean(xx)
yy<-1:100
yy
sink()

xx

?which
?min
