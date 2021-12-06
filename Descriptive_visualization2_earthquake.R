###########Descriptive visualization on quakes dataset############

equakes<-datasets::quakes

head(equakes,10) #top 10 rows
tail(equakes,10) #last 10 rows

equakes[,c(1,2)] #all the rows with it's 1st and 2nd column

#---------------------------------------------------------------

#summary()

summary(equakes[,4]) #gives the summarized statistics for all the rows in the 4th column
summary(equakes[,5]) #or summary(equakes$stations),gives the summarized statistics for all the rows in the 5th column      
summary(equakes) ##gives the summarized statistics for the entire equakes dataset

#---------------------------------------------------------------

#plot()

plot(equakes$mag,type='l') #performs line plot for "mag" column->single variable plot
plot(equakes$depth,type='l') #performs line plot for "depth" column
plot(equakes$lat, equakes$long,type='p') #performs point type graph for "lat" versus "long"
plot(equakes$depth, equakes$mag,type='p') #point type graph for depth versus mag column
plot(equakes) #performs scatter plot for the entire dataset
plot(equakes$depth,main='Various depth levels in the earthquake',col='green') 

#---------------------------------------------------------------

#barplot()

barplot(equakes$mag,main='Overview of the magnitude',col='blue',horiz=F)

#---------------------------------------------------------------

#hist()

hist(equakes$depth,col='green')
hist(equakes$mag,col='red')

#---------------------------------------------------------------

#boxplot()

#single boxplot
boxplot(equakes$mag,main='Single boxplot') #boxplot for "mag" column
boxplot.stats(equakes$mag)$out #displays the outliers in "mag" column

#multiple boxplot
boxplot(equakes[,1:5],main='Multiple boxplot') #boxplot for all the rows from 1st to 5th column->multiple boxplot

#----------------------------------------------------------------

#to combine mulitple plots in one window then the following functions are used


par(mfrow=c(3,3), mar=c(2,5,2,1), las=0, bty="o")
plot(equakes$depth)
plot(equakes$lat, equakes$long)
plot(equakes$mag, type="l")
plot(equakes$mag, type="p")
plot(equakes$mag, type="b")

barplot(equakes$stations, main='Overview of the stations',col='red',horiz=T)

hist(equakes$depth)

boxplot(equakes$depth,main='Single boxplot')
boxplot(equakes[,0:5],main='Multiple box plots')

#----------------------------------------------------------------

#to compute std deviation,variance,skewness,kurtosis--->to compute these,use na.rm=T at the end, so as to remove null values in that column
                                                        #because, if null values are present then it gives "NA" as the output
sd(equakes$mag,na.rm=T)
sd(equakes$lat,na.rm=T)

var(equakes$long,na.rm=T)
var(equakes$stations,na.rm=T)

#to find skewness and kurtosis, install "moments" package
skewness(equakes$mag,na.rm=T)

kurtosis(equakes$depth,na.rm=T)

##########---------------------------------------------##########

