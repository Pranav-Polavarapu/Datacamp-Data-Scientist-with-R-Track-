#7


# Probability response takes < 1 hour
pexp(1, rate = 1/2.5)



# Probability response takes > 4 hours
pexp(4, rate = 1/2.5, lower.tail = FALSE)



# Probability response takes 3-4 hours
pexp(4, rate = 1/2.5) - pexp(3, rate = 1/2.5)
