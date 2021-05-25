#Exercise
#Ride duration constraints
#Values that are out of range can throw off an analysis, so it's important to catch them early on. In this exercise, you'll be examining the duration_min column more closely. Bikes are not allowed to be kept out for more than 24 hours, or 1440 minutes at a time, but issues with some of the bikes caused inaccurate recording of the time they were returned.

#In this exercise, you'll replace erroneous data with the range limit (1440 minutes), however, you could just as easily replace these values with NAs.

#dplyr, assertive, and ggplot2 are loaded and bike_share_rides is available.

#Instructions 1/2
#Create a three-bin histogram of the duration_min column of bike_share_rides using ggplot2 to identify if there is out-of-range data.

# Create breaks
breaks <- c(min(bike_share_rides$duration_min), 0, 1440, max(bike_share_rides$duration_min))

# Create a histogram of duration_min
ggplot(bike_share_rides, aes(duration_min)) +
  geom_histogram(breaks = breaks)