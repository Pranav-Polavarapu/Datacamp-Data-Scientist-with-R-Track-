#7


# Run a generalized additive model of 
# yield vs. smoothed year and census region
gam(yield_kg_per_ha ~ s(year) + census_region, data = corn)



# Wrap the model code into a function
run_gam_yield_vs_year_by_region <- function(data) {
  gam(yield_kg_per_ha ~ s(year) + census_region, data = data)
}

# Try it on the wheat dataset
run_gam_yield_vs_year_by_region(wheat)