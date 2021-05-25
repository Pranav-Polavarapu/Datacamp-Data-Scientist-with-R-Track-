#Exercise
#Back to the future
#Something has gone wrong and it looks like you have data with dates from the future, which is way outside of the date range you expected to be working with. To fix this, you'll need to remove any rides from the dataset that have a date in the future. Before you can do this, the date column needs to be converted from a character to a Date. Having these as Date objects will make it much easier to figure out which rides are from the future, since R makes it easy to check if one Date object is before (<) or after (>) another.

#dplyr and assertive are loaded and bike_share_rides is available.

#Instructions

#Convert the date column of bike_share_rides from character to the Date data type.
#Assert that all values in the date column happened sometime in the past and not in the future.
#Filter bike_share_rides to get only the rides from the past or today, and save this as bike_share_rides_past.
#Assert that the dates in bike_share_rides_past occurred only in the past.

library(lubridate)
# Convert date to Date type
bike_share_rides <- bike_share_rides %>%
  mutate(date = as.Date(bike_share_rides$date))

# Make sure all dates are in the past
assert_all_are_in_past(bike_share_rides$date)

# Filter for rides that occurred before or on today's date
bike_share_rides_past <- bike_share_rides %>%
  filter(date<=Sys.Date())

# Make sure all dates from bike_share_rides_past are in the past
assert_all_are_in_past(bike_share_rides_past$date)