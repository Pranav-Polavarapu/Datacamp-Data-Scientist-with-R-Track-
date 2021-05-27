#1

# Look at the gold medals data
gold_medals

# Note the arguments to median()
args(median)

# Rewrite this function call, following best practices
median(gold_medals, na.rm = TRUE)




# Note the arguments to rank()
args(rank)

# Rewrite this function call, following best practices
rank(-gold_medals, na.last = "keep", ties.method = "min")