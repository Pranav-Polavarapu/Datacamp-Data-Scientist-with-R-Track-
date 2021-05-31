#7


# Probability of closing 3 out of 3 deals
dbinom(3, 3, 0.3)



# Probability of closing <= 1 deal out of 3 deals
pbinom(1, 3, 0.3)


# Probability of closing > 1 deal out of 3 deals
pbinom(1,3,0.3, lower.tail=FALSE)
