#Install library
install.packages("openintro")

#Load Library
library(openintro)

#Load data
data(BloodPressure)

#Display data
BloodPressure

#Calculate z parameters
mu <- mean(BloodPressure$After) # Calculate the mean of before
mu0 <- mean(BloodPressure$Before) # Calculate the mean of after
alpha <- 0.05 # Specify the significance level
sigma <- sd(BloodPressure$After) # Calculate the standard deviation of after 
n <- nrow(BloodPressure) # get the sample size

#Display z parameters
mu
mu0
alpha
sigma
n

#Calculate z 
z <- (mu-mu0)/(sigma/sqrt(n))
z

#Calculate p-value
p <- 2*pnorm(abs(z),lower.tail=FALSE) # p-values (we multiple by 2 since it’s a two-side test)
p