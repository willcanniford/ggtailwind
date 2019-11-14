#' Extract hex codes from default colour pallete
#'
#' @param ... Character names of tailwind colours 
#'
#' @examples
#' tailwind_cols()
#' tailwind_cols('pink-500')
#' tailwind_cols('red-700', 'blue-500')
#'
#' @export
tailwind_cols <-
function(...){
  # Get the stored tailwind colour palette from data/
  stored_colours <- get("default_colour_palette")
  user_colours <- c(...)
  
  # Return all if nothing specified
  if (is.null(user_colours))
    return (stored_colours)
  
  stored_colours[user_colours]
}
