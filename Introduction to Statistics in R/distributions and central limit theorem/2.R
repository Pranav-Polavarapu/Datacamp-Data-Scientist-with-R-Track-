#2



# Probability of deal < 7500
pnorm(7500,mean=5000,sd=2000)



# Probability of deal > 1000
pnorm(1000,5000,2000,lower.tail=FALSE)



# Probability of deal between 3000 and 7000
pnorm(7000,5000,2000)-pnorm(3000,5000,2000)



# Calculate amount that 75% of deals will be more than
qnorm(0.75, mean = 5000, sd = 2000, lower.tail = FALSE)


#dnorm gives the density, pnorm gives the distribution function, qnorm gives the quantile function, and rnorm generates random deviates.
