#3



# Calculate the quartiles of co2_emission
quantile(food_consumption$co2_emission)





quantile(food_consumption$co2_emission, probs = c(0, 0.2, 0.4, 0.6, 0.8, 1))





# Calculate the deciles of co2_emission
quantile(food_consumption$co2_emission, probs = seq(0, 1, 0.1))
