#' Extract hex codes using regex pattern 
#'
#' @param pattern Regex pattern to search palette names
#'
#' @examples
#' tailwind_cols_regex('orange-.*')
#' tailwind_cols_regex('.*-400')
#' 
#' @export
tailwind_cols_regex <-
function(pattern) {
  stored_colours <- get("default_colour_palette")
  stored_colours[grep(pattern, names(stored_colours))]
}
