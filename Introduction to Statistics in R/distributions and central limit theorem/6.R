#6


# Probability of 5 responses
dpois(5, lambda = 4)



# Probability of 5 responses from coworker
dpois(5, lambda = 5.5)


# Probability of 2 or fewer responses
ppois(2, lambda = 4)


# Probability of > 10 responses
ppois(10, lambda = 4, lower.tail = FALSE)
