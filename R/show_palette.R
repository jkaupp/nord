#' Display a color palette
#'
#' Given a character vector (hex RGB values), display palette in graphics window.
#'
#' @param palette vector of character hex RGB values
#' @export
#' @examples
#' library(nord)
#' nord_show_palette("halifax_harbor")
nord_show_palette <- function(palette) {

   name <- palette

   palette <- nord(palette)

   n <- length(palette)

   if (length(palette > 0)) {

    graphics::image(1:n, 1, as.matrix(1:n), col = palette,
          xlab = "", ylab = "", xaxt = "n", yaxt = "n",
          bty = "n")
    graphics::title(main = name)

  }
}
