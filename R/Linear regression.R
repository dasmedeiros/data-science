#Load Libraries
library(dplyr)
library(ggplot2)

#Load data
data(ols_stock)

#Display data
ols_stock

#Scatter plot
ggplot(ols_stock, aes(x = dividend, y = stock_return_scaled))+ 
  geom_point(colour = "red") + geom_smooth(method = "lm", fill = NA) +
  labs(title = "Scatter plot",
       x = "Dividend",
       y = "Stock returns scaled")

#Simple Regression Model
simple.fit<-lm(stock_return_scaled ~ dividend, data = ols_stock)
LinearModel<-simple.fit
summary(LinearModel)

