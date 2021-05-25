# Filter for rows with "-" in the phone column
sfo_survey %>%
  filter(str_detect(phone, "-"))

# Filter for rows with "(" or ")" in the phone column
sfo_survey %>%
  filter(str_detect(phone, fixed("(")) | str_detect(phone, fixed(")")))

