#Exercise
# duration constraints
#Values that are out of range can throw off an analysis, so it's important to catch them early on. In this exercise, you'll be examining the duration_min column more closely. Bikes are not allowed to be kept out for more than 24 hours, or 1440 minutes at a time, but issues with some of the bikes caused inaccurate recording of the time they were returned.

#In this exercise, you'll replace erroneous data with the range limit (1440 minutes), however, you could just as easily replace these values with NAs.

#dplyr, assertive, and ggplot2 are loaded and bike_share_rides is available.

#Instructions 2/2

#Replace the values of duration_min that are greater than 1440 minutes (24 hours) with 1440. Add this to bike_share_rides as a new column called duration_min_const.
#Assert that all values of duration_min_const are between 0 and 1440.


# Create breaks
breaks <- c(min(bike_share_rides$duration_min), 0, 1440, max(bike_share_rides$duration_min))

# Create a histogram of duration_min
ggplot(bike_share_rides, aes(duration_min)) +
  geom_histogram(breaks = breaks)

# duration_min_const: replace vals of duration_min > 1440 with 1440
bike_share_rides <- bike_share_rides %>%
  mutate(duration_min_const = replace(duration_min, duration_min>1440, 1440))

# Make sure all values of duration_min_const are between 0 and 1440
assert_all_are_in_closed_range(bike_share_rides$duration_min_const, lower = 0, upper = 1440)