#9


fortified_barley <- barley %>% 
  # Fortify with metric units
  fortify_with_metric_units() %>%
  # Fortify with census regions
  fortify_with_census_region()

# See the result
glimpse(fortified_barley)




# From previous step
fortified_barley <- barley %>% 
  fortify_with_metric_units() %>%
  fortify_with_census_region()

# Plot yield vs. year by region
plot_yield_vs_year_by_region(fortified_barley)





# From previous step
fortified_barley <- barley %>% 
  fortify_with_metric_units() %>%
  fortify_with_census_region()

fortified_barley %>% 
  # Run a GAM of yield vs. year by region
  run_gam_yield_vs_year_by_region() %>% 
  # Make predictions of yields in 2050
  predict_yields(year = 2050)