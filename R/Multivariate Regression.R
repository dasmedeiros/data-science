#Load library
library(tidyverse)

#Load data
data(MultiRegDataset)

#Display data
MultiRegDataset

#Summary statistics 
summary(MultiRegDataset)

#Standard deviation
sd(MultiRegDataset$age)
sd(MultiRegDataset$bmi)
sd(MultiRegDataset$children)
sd(MultiRegDataset$expenses)

#Expenses histogram
hist(MultiRegDataset$expenses,
     main="Histogram for Expenses",
     xlab="Expenses in dollars",
     labels=TRUE)

#One Sample t-test
t.test(MultiRegDataset$expenses, mu = 10000)

#Simple Regression Model
simple.fit<-lm(expenses ~ smoker, data = MultiRegDataset)
LinearModel<-simple.fit
summary(LinearModel)

#Multiple linear regression model
multiple.fit <- lm(expenses~age+sex+bmi+children+smoker+region, data = MultiRegDataset)
MultLinearModel <- multiple.fit
summary(MultLinearModel)
Anova(MultLinearModel)