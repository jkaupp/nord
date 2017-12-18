library(ggplot2)
library(viridis)
library(purrr)
library(scales)

# ggplot(diamonds, aes(carat, price)) +
#   geom_point(aes(color = color)) +
#   scale_color_nord(palette = "afternoon_prarie", discrete = TRUE)
#
#
# #
# # colors <- nord_palettes[["silver_mine"]] %>%
# #   map_df(~as.data.frame(t(grDevices::col2rgb(col = .x)))) %>%
# #   mutate(z = sqrt(red^2 + green^2 + blue^2))
# #
# # predict(prcomp(colors$z))
