#1

is_leap_year <- function(year) {
  # If year is div. by 400 return TRUE
  if(is_divisible_by(year, 400)) {
    return(TRUE)
  }
  # If year is div. by 100 return FALSE
  if(is_divisible_by(year, 100)) {
    return(FALSE)
  }  
  # If year is div. by 4 return TRUE
  if(is_divisible_by(year, 4)) {
    return(TRUE)
  }
  # Otherwise return FALSE
  FALSE
}