#Exercise
#Full duplicates
#You've been notified that an update has been made to the bike sharing data pipeline to make it more efficient, but that duplicates are more likely to be generated as a result. To make sure that you can continue using the same scripts to run your weekly analyses about ride statistics, you'll need to ensure that any duplicates in the dataset are removed first.

#When multiple rows of a data frame share the same values for all columns, they're full duplicates of each other. Removing duplicates like this is important, since having the same value repeated multiple times can alter summary statistics like the mean and median. Each ride, including its ride_id should be unique.

#dplyr is loaded and bike_share_rides is available.

#Instructions
#100 XP
#Get the total number of full duplicates in bike_share_rides.
#Remove all full duplicates from bike_share_rides and save the new data frame as bike_share_rides_unique.
#Get the total number of full duplicates in the new bike_share_rides_unique data frame.

# Count the number of full duplicates
sum(duplicated(bike_share_rides))

# Remove duplicates
bike_share_rides_unique <- distinct(bike_share_rides)

# Count the full duplicates in bike_share_rides_unique
sum(duplicated(bike_share_rides_unique))