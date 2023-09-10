#Install library
install.packages("ggplot2")

#Load library
library(ggplot2)

#Load data
data(carsDB)

#Display data
carsDB

#Summary statistics 
summary(carsDB)

#Scatterplot with smoothing for mpg vs. disp
ggplot(data=carsDB, aes(x = disp, y = mpg)) + geom_point(shape=21, aes(fill = model)) + geom_smooth(color='red') +
  labs(title = "Fuel efficiency by engine displacement",
       subtitle = "Fuel economy and displacement data for 21 models of cars",
       x = "Engine power (displacement)",
       y = "Fuel efficiency (miles per gallon)",
       fill = "Car model") + theme(plot.title = element_text(hjust=0.5), plot.subtitle = element_text(hjust=0.5), legend.title = element_text(size = 14))

# Pearson correlation mpg vs. disp
cor(carsDB$mpg, carsDB$disp)

#Scatterplot with smoothing for mpg vs. hp
ggplot(data=carsDB, aes(x = hp, y = mpg)) + geom_point(shape=21, aes(fill = model)) + geom_smooth(color='red') + 
  labs(title = "Fuel efficiency by horse power",
       subtitle = "Fuel economy and horse power data for 21 models of cars",
       x = "Engine power (horse power)",
       y = "Fuel efficiency (miles per gallon)",
       fill = "Car model") + theme(plot.title = element_text(hjust=0.5), plot.subtitle = element_text(hjust=0.5), legend.title = element_text(size = 14))

# Pearson correlation mpg vs. hp
cor(carsDB$mpg, carsDB$hp)

#Scatterplot with smoothing for mpg vs. wt
ggplot(data=carsDB, aes(x = wt, y = mpg)) + geom_point(shape=21, aes(fill = model)) + geom_smooth(color='red') + 
  labs(title = "Fuel efficiency by car weight",
       subtitle = "Fuel economy and weight data for 21 models of cars",
       x = "Car weight (thousand pounds)",
       y = "Fuel efficiency (miles per gallon)",
       fill = "Car model") + theme(plot.title = element_text(hjust=0.5), plot.subtitle = element_text(hjust=0.5), legend.title = element_text(size = 14))

# Pearson correlation mpg vs. wt
cor(carsDB$mpg, carsDB$wt)