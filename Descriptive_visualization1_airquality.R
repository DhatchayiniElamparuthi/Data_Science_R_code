
###########Descriptive visualization on airquality dataset############

airquality<-datasets::airquality

head(airquality,10)
tail(airquality,10)

airquality[,c(1,2)]

df<-airquality[,-6]

#---------------------------------------------------------------

#summary()-gives the summarized statistics of the dataset

summary(airquality[,1]) #gives the summarized statistics for all the rows in the 1st column
summary(airquality$Wind) #gives the summarized statistics for only the "Wind" column
summary(airquality) #gives the summarized statistics for the entire airquality dataset

#---------------------------------------------------------------

#plot()
#plot types- p:points,l:lines, b:both
#by default,the plot type is "point"
#xlab- name of the x-axis
#ylab- name of the y-axis
#main- main heading of the plot

plot(airquality$Wind)#performs scatter plot for "Wind" column->single variable plot
plot(airquality$Temp, airquality$Wind,type="p") #"point" type graph plotted for "Temp" versus "Wind" column
plot(airquality) #performs scatter plot for the entire dataset
plot(airquality$Wind,type="l") #"line" type graph plotted for "Wind" column
plot(airquality$Wind,xlab='Ozone Concentration', ylab='No. of Instances',main='Ozone levels in NYC city',col='red') #red coloured scatter plot performed for "Wind" column with x-axis named as "Ozone Concentration", y-axis named as "No.of Instances", main plot named as "Ozone levels in NYC city"

#---------------------------------------------------------------

#barplot()
#Vertical barplot- horiz=F
#Horizontal barplot- horiz=T

barplot(airquality$Ozone,main='Ozone Concentration in air',ylab='Ozone levels',col='blue',horiz=F,axes=T)

#---------------------------------------------------------------

#hist()-Histogram
hist(airquality$Temp)
hist(airquality$Temp,main='Solar Radiation values in air',xlab='Solar Radiation',col='red')

#---------------------------------------------------------------

#boxplot()

#single boxplot
boxplot(airquality$Wind,main='Single boxplot') #boxplot for "Wind" column

#multiple boxplot
boxplot(airquality[,1:4],main='Multiple boxplot') #boxplot for all the rows from 1st to 4th column->multiple boxplot

#----------------------------------------------------------------

#to combine mulitple plots in one window then the following functions are used
#par()- displays mutiple graphs in a single plot by some graphical parameters
#mfrow- no.of rows and columns in subplot
#mar()- margin of the grid
#las- position of the labels(las:1 for horizontal, las:0 for vertical)
#bty()- box around the plot(bty:o for complete box)

par(mfrow=c(3,3), mar=c(2,5,2,1), las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type="l")
plot(airquality$Ozone, type="p")
plot(airquality$Ozone, type="b")

barplot(airquality$Ozone, main='Ozone Concentration in air', xlab='Ozone levels',col='green',horiz=T) #horiz=T-horizontal barplot

hist(airquality$Solar.R)

boxplot(airquality$Solar.R,main='Single boxplot')
boxplot(airquality[,0:4],main='Multiple box plots')

##########-----------------------------------------##########