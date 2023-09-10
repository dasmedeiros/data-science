#Load data
data(adanalysis)

#Display data
adanalysis

#One Sample t-test – Different than 30,000
t.test(adanalysis$adtype2, mu = 30000)