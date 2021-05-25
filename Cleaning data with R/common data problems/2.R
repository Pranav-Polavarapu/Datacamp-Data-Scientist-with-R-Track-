#Trimming strings
#In the previous exercise, you were able to identify the correct data type and convert user_birth_year to the correct type, allowing you to extract counts that gave you a bit more insight into the dataset.

#Another common dirty data problem is having extra bits like percent signs or periods in numbers, causing them to be read in as characters. In order to be able to crunch these numbers, the extra bits need to be removed and the numbers need to be converted from character to numeric. In this exercise, you'll need to convert the duration column from character to numeric, but before this can happen, the word "minutes" needs to be removed from each value.

#dplyr, assertive, and stringr are loaded and bike_share_rides is available.

#Instructions
#100 XP
#Use str_remove() to remove "minutes" from the duration column of bike_share_rides. Add this as a new column called duration_trimmed.
#Convert the duration_trimmed column to a numeric type and add this as a new column called duration_mins.
#Glimpse at bike_share_rides and assert that the duration_mins column is numeric.
#Calculate the mean of duration_mins.

bike_share_rides <- bike_share_rides %>%
  # Remove 'minutes' from duration: duration_trimmed
  mutate(duration_trimmed = str_remove(duration, "minutes"),
         # Convert duration_trimmed to numeric: duration_mins
         duration_mins = as.numeric(duration_trimmed))

# Glimpse at bike_share_rides
glimpse(bike_share_rides)

# Assert duration_mins is numeric
assert_is_numeric(bike_share_rides$duration_mins)

# Calculate mean duration
mean(bike_share_rides$duration_mins)