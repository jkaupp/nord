#' nord palette with ramped colours
#'
#' @param palette Choose from 'nord_palettes' list
#'
#' @param alpha transparency
#'
#' @param reverse If TRUE, the direction of the colours is reversed.
#'
#' @export
nord_pal <- function(palette = "polarnight", alpha = 1, reverse = FALSE) {

  pal <- nord_palettes[[palette]]

  if (reverse) {
    pal <- rev(pal)
  }
  return(colorRampPalette(pal, alpha))
}

#' nord color scale for ggplot2
#'
#' @rdname scale_color_nord
#'
#' @param palette Choose from 'nord_palettes' list
#'
#' @param reverse logical, Reverse the order of the colours?
#'
#' @param alpha transparency
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @inheritParams viridis::scale_color_viridis
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_nord <- function(palette = "polarnight", discrete = TRUE, alpha = 1, reverse = FALSE, ...) {

  if (discrete) {
    discrete_scale("colour", "nord", nord_pal(palette, alpha = alpha, reverse = reverse))
  }
  else {
    scale_color_gradientn(colours = nord_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
  }
}

#' @rdname scale_color_nord
#' @export
scale_colour_nord <- scale_color_nord

#' #' nord fill scale for ggplot2
#'
#' @param palette Choose from 'nord_palettes' list
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams nord_pal
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @export
scale_fill_nord <- function(palette = "polarnight", discrete = TRUE, alpha = 1, reverse = TRUE, ...) {
  if (discrete) {
    discrete_scale("fill", "nord", palette = nord_pal(palette, alpha = alpha, reverse = reverse))
  }
  else {
    scale_fill_gradientn(colours = nord_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
  }
}
