#1



# Count the deals for each product
amir_deals %>%
  count(product)


# Calculate probability of picking a deal with each product
amir_deals %>%
  count(product) %>%
  mutate(prob = n/sum(n))





