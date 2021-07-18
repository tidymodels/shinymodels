#'  Internal function to run shiny application on an object of `shiny_data` class
#'
#' This function takes the [organize_data()] result to shiny_models a Shiny app.
#' @param x The [organize_data()] result.
#' @param hover_cols The columns to display while hovering in the Shiny app.
#' @param hover_only A Boolean to turn on and off hovering in the interactive
#' plots; the default option is FALSE, it is recommended to use TRUE for a big data.
#' @param ... Other parameters not currently used.
#' @export
#' @keywords internal

shiny_models <- function(x, hover_cols = NULL, hover_only = NULL, ...) {
  UseMethod("shiny_models")
}

#' @export
#' @rdname shiny_models
shiny_models.default <- function(x, hover_cols = NULL, hover_only = NULL, ...) {
  rlang::abort("No `shiny_models()` exists for this type of object.")
}




