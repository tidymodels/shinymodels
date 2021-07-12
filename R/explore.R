#'  Launches shiny application based on data from objects
#'
#' This function takes the data based on [tune::fit_resamples()] results to
#' launch a Shiny app. This function normally does not return; interrupt R
#' to stop the app (usually by pressing Ctrl+C or Esc).
#' @param x The [tune::fit_resamples()] result.
#' @param hover_cols The columns to display while hovering in the Shiny app.
#' @param ... Other parameters not currently used.
#' @keywords models,  regression, graphs, classes, classif
#' @export

explore <- function(x, hover_cols = NULL, ...) {
  UseMethod("explore")
}

#' @export
#' @rdname explore
explore.default <- function(x, hover_cols = NULL, ...) {
  rlang::abort("No `explore()` exists for this type of object.")
}

#' @export
#' @rdname explore
explore.tune_results <-
  function(x,

           hover_cols = NULL,
           hover_only,
           ...) {
    dat <- organize_data(x, hover_cols, ...)
    shinymodels(dat, hover_only)
  }


