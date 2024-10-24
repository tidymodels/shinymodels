#'  Internal function to run shiny application on an object of `shiny_data` class
#'
#' This function takes the [organize_data()] result to shiny_models a Shiny app.
#' @param x The [organize_data()] result.
#' @param hover_cols The columns to display while hovering in the Shiny app.
#' This argument can be:
#'
#'  * A `dplyr` selector (such as [dplyr::starts_with()]) or a set of selector
#'    if they are enclosed with in `c()`.
#'  * A character vector.
#'
#' @param hover_only A logical to determine if interactive highlighting of
#' points is enabled (the default) or not. This can be helpful for very large
#' data sets.
#' @param ... Other parameters not currently used.
#' @return A shiny application.
#' @export
#' @keywords internal

shiny_models <- function(x, hover_cols = NULL, hover_only = NULL, ...) {
  UseMethod("shiny_models")
}

#' @export
#' @rdname shiny_models
shiny_models.default <- function(x, hover_cols = NULL, hover_only = NULL, ...) {
  cli::cli_abort("No {.fn shiny_models} method exists for this type of object.")
}
