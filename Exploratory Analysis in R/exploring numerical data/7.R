#7


# Facet hists using hwy mileage and ncyl
common_cyl %>% 
  ggplot(aes(x = hwy_mpg)) +
  geom_histogram() +
  facet_grid(ncyl ~ suv) +
  ggtitle("Mileage by suv and ncyl")
