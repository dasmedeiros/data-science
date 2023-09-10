#Load library
library(MASS) 
#Create contingency table
tbl = table(carsdatabase$Cylinders, carsdatabase$Type)
#View contigency table
print(tbl)
#Chi-squared test
chisq.test(tbl)