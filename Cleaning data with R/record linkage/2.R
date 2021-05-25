# Count the number of each city variation
zagat %>%
  count(city)



# Count the number of each city variation
zagat %>%
  count(city)

# Join and look at results
zagat %>%
  # Left join based on stringdist using city and city_actual cols
  stringdist_left_join(cities, by = c("city" = "city_actual")) %>%
  # Select the name, city, and city_actual cols
  select(name, city, city_actual)