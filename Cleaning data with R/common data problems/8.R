#Exercise
#Aggregating partial duplicates
#Another way of handling partial duplicates is to compute a summary statistic of the values that differ between partial duplicates, such as mean, median, maximum, or minimum. This can come in handy when you're not sure how your data was collected and want an average, or if based on domain knowledge, you'd rather have too high of an estimate than too low of an estimate (or vice versa).

#dplyr is loaded and bike_share_rides is available.

#Instructions
#100 XP

#Group bike_share_rides by ride_id and date.
#Add a column called duration_min_avg that contains the mean ride duration for the row's ride_id and date.
#Remove duplicates based on ride_id and date, keeping all columns of the data frame.
#Remove the duration_min column.

bike_share_rides %>%
  # Group by ride_id and date
  group_by(ride_id, date) %>%
  # Add duration_min_avg column
  mutate(duration_min_avg = mean(duration_min)) %>%
  # Remove duplicates based on ride_id and date, keep all cols
  distinct(ride_id, date, .keep_all = TRUE) %>%
  # Remove duration_min column
  select(-duration_min)