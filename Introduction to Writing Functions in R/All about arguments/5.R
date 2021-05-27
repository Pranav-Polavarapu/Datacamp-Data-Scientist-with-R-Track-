#5

# Look at the Standard and Poor 500 data
glimpse(std_and_poor500)

# Write a function to calculate the reciprocal
get_reciprocal <- function(x) {
  return (1/x)
}



# From previous step
get_reciprocal <- function(x) {
  1 / x
}

# Write a function to calculate the harmonic mean
calc_harmonic_mean <- function(x) {
  x %>%
    get_reciprocal() %>%
    mean() %>%
    get_reciprocal()
}




# From previous steps
get_reciprocal <- function(x) {
  1 / x
}
calc_harmonic_mean <- function(x) {
  x %>%
    get_reciprocal() %>%
    mean() %>%
    get_reciprocal()
}

std_and_poor500 %>% 
  # Group by sector
  group_by(sector) %>% 
  # Summarize, calculating harmonic mean of P/E ratio
  summarize(hmean_pe_ratio = caalc_harmonic_mean(pe_ratio))