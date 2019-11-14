#' Use tailwind palettes to colour ggplot2 plots
#'
#' @param palette Character name from \code{tailwind_palettes}
#' @param discrete Boolean, is the colour variable categorical/discrete
#' @param reverse Boolean, whether you want to flip palette order
#' @param ... Additional options to pass to \code{discrete_scale} or \code{scale_fill_gradientn}
#' 
#' @importFrom ggplot2 scale_fill_gradientn
#' @importFrom ggplot2 discrete_scale
#' 
#' @export
scale_fill_tailwind <-
function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  # Find the selected palette from tailwind_palettes
  selected_palette <- tailwind_pal(palette = palette, reverse = reverse)
  
  if (discrete) {
    discrete_scale("fill", paste0("tailwind_", palette), palette = selected_palette, ...)
  } else {
    scale_fill_gradientn(colours = selected_palette(256), ...)
  }
}
