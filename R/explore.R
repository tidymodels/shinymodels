#'  Launches shiny application based on data from [tune::fit_resamples()]
#'
#' This function takes the data based on [tune::fit_resamples()] results to
#' launch a Shiny app. This function normally does not return; interrupt R
#' to stop the app (usually by pressing Ctrl+C or Esc).
#' @param x The [tune::fit_resamples()] result.
#' @param hover_cols The columns to display while hovering in the Shiny app.
#' @param hover_only A Boolean to turn on and off hovering in the interactive
#' plots.
#' @param ... Other parameters not currently used.
#' @keywords models, regression, graphs, classes, classif
#' @export

explore <- function(x, hover_cols = NULL, hover_only = NULL, ...) {
  UseMethod("explore")
}

#' @export
#' @rdname explore
explore.default <- function(x, hover_cols = NULL, hover_only = NULL, ...) {
  rlang::abort("No `explore()` exists for this type of object.")
}

#' @export
#' @rdname explore
explore.tune_results <-
  function(x,
           hover_cols = NULL,
           hover_only = NULL,
           ...) {
    dat <- organize_data(x, hover_cols, ...)
    shiny_models(dat, hover_only)
  }
