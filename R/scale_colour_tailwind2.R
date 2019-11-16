#' Use tailwind palettes to colour ggplot2 plots
#'
#' @param palette Palette function, use \code{tailwind_pal_scale}
#' @param discrete Boolean, is the colour variable categorical/discrete
#' @param reverse Boolean, whether you want to flip palette order
#' @param ... Additional options to pass to \code{discrete_scale} or \code{scale_color_gradientn}
#' 
#' @importFrom ggplot2 scale_color_gradientn
#' @importFrom ggplot2 discrete_scale
#' 
#' @export
scale_colour_tailwind2 <-
function(palette, discrete = TRUE, reverse = FALSE, ...) {
  if (discrete) {
    discrete_scale("colour", paste0("tailwind_", palette), palette = palette, ...)
  } else {
    scale_color_gradientn(colours = palette(256), ...)
  }
}
