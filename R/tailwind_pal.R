#' Create palette function using tailwind_palettes
#'
#' This is a function to generate a palette function from \code{tailwind_palettes} for us with \code{discrete_scale} and \code{ggplot} functions. 
#'
#' @param palette Character name from \code{tailwind_palettes}
#' @param reverse Boolean, whether you want to flip palette order
#' @param ... Additional options to pass to \code{colorRampPalette}
#' 
#' @importFrom grDevices colorRampPalette
#' 
tailwind_pal <-
function(palette = "main", reverse = FALSE, ...) {
  selected_palette <- ggtailwind::tailwind_palettes[[palette]]
  
  if (reverse) {
    selected_palette <- rev(selected_palette)
  }
  
  grDevices::colorRampPalette(selected_palette, ...)
}
