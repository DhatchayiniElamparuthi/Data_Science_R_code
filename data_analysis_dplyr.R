###########Data Analysis using dplyr###########

install.packages("dplyr")
library(dplyr)

flights<-read.csv("C:/Users/DHATCHAYINI/Documents/data sets/flights.csv")
View(flights)

head(flights)#By default,in R, first 6 rows' data will be displayed
tail(flights)#By default,in R, last 6 rows' data will be displayed
glimpse(flights)#to get the overview of the data,glimpse() is used

#executing data manipulation functions in dplyr - select(), filter(), arrange(), group_by(), summarise(), mutate()
select(flights, dep_time, arr_time, flight)#select-to select particular columns

filter(flights, month==1 & day==1 & origin=="EWR")#we can use comma or ampersand to represent AND condition
filter(flights, carrier=="AA" | carrier=="UA")#filter-to select particular rows

#chaining method-forward chaining->commands are executed in a sequence
flights %>%   #here,%>% is called pipeline operator
  select(carrier, dep_delay) %>%
  filter(dep_delay>60)

flights %>%
  select(carrier,dep_delay) %>%
  arrange(dep_delay) #arrange-to sort the data in ascending order

flights %>%
  group_by(dest) %>% #group_by-when a particular column(fixed values) have to be grouped
  summarise(avg_delay = mean(arr_delay, na.rm=TRUE))#removes all the null values from the arr_delay column and calculates the mean of it

flights %>%
  group_by(month, day) %>%
  summarise(flight_count= n()) %>%
  arrange(desc(flight_count)) #arrange(desc())-to sort the data in descending order

new_data<-flights %>% mutate(Speed =distance/air_time*60)#mutate()-to add new columns,here "Speed" column is added
new_data #printing the new variable "new_data",which has the new column "Speed"

##########-----------------------------------------##########