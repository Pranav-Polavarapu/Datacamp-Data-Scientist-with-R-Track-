#6

# Reorder levels
email$number_reordered <- factor(email$number, levels = c("none", "small", "big"))

# Construct plot of number_reordered
ggplot(email, aes(x = number_reordered)) +
  geom_bar() +
  facet_wrap(~ spam)
