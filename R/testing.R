library(ggplot2)
library(viridis)

ggplot(diamonds, aes(carat, price)) +
  geom_point(aes(color = price)) +
  scale_color_nord(palette = "aurora", discrete = FALSE)
