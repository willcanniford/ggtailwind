#' Create a scale palette using tailwind colours 
#'
#' Generate a palette function object with a start hex, end hex and optional middle colour that the scale will go through. 
#'
#' @param start Character name from \code{tailwind_palettes} for the low end of the resulting scale
#' @param end Character name from \code{tailwind_palettes} for the high end of the resulting scale
#' @param middle Optional character name from \code{tailwind_palettes} for the scale to go through
#' @param ... Additional options to pass to \code{colorRampPalette} 
#' 
#' @importFrom grDevices colorRampPalette
#' 
#' @export
tailwind_pal_scale <-
function(start = 'green-500', end = 'red-500', middle = NULL, ...) {
  if (!is.null(middle)) {
    custom_palette = ggtailwind::tailwind_cols(start, middle, end)
  } else {
    custom_palette = ggtailwind::tailwind_cols(start, end)
  }
  grDevices::colorRampPalette(custom_palette, ...)
}
