#' organize_data()
#' Extracts data from objects to use in a shiny app.
#'
#' This function joins the result of [tune::fit_resamples()]  to the original dataset
#' to give a dataframe that can be a Shiny input.
#' @param object The [tune::fit_resamples()] result.
#' @param original_data The original dataset.
#' @keywords models,  regression, graphs, classes, classif
#' @export
#' @return
#' A data frame.
organize_data <- function(object, original_data, ...) {
  UseMethod("organize_data")
}

#' @export
#' @rdname organize_data
organize_data.default <- function(x, original_data, ...) {
  rlang::abort("No `organize_data()` exists for this type of object.")
}

#' @export
#' @rdname organize_data
organize_data.tune_results <-
  function(x,
           summarize = FALSE,
           parameters = NULL,
           ...) {
    if (!inherits(x, "tune_results")) {
      rlang::abort(
        paste0(
          "`x` should be an object produced by one of the `tune_*()` functions,",
          "`fit_resamples()` or `last_fit()`."
        )
      )
    }
    if (!(".predictions" %in% colnames(x))) {
      rlang::abort(
        paste0(
          "The `.predictions` column does not exist. ",
          "Refit with the control argument `save_pred = TRUE` to save predictions."
        )
      )
    }
    y_name <- tune::.get_tune_outcome_names(x)
    if (!(y_name %in% names(original_data))) {
      rlang::abort(glue::glue("'{y_name}' is not a column in the orignal data"))
    }
    sample_predictions <-
      tune::collect_predictions(x, summarize = TRUE)
    if (is.numeric(original_data[[y_name]]) == TRUE) {
      sample_predictions <- sample_predictions %>%
        dplyr::mutate(.residual = !!rlang::sym(y_name) - .pred)
    }
    preds <- sample_predictions  %>%
      dplyr::inner_join(original_data %>%
                          parsnip::add_rowindex() %>%
                          dplyr::select(-!!rlang::sym(y_name)),
                        by = ".row")
    return(preds)
  }
# ------------------------------------------------------------------------------

#' @export
#' @rdname organize_data
organize_data.tune_race <- function(x, original_data, ...) {
  y_name <- tune::.get_tune_outcome_names(x)
  if (!(y_name %in% names(original_data))) {
    rlang::abort(glue::glue("'{y_name}' is not a column in the orignal data"))
  }
  sample_predictions <-
    tune::collect_metrics(x, summarize = TRUE)
  if (is.numeric(original_data[[y_name]]) == TRUE) {
    sample_predictions <- sample_predictions %>%
      dplyr::mutate(.residual = !!rlang::sym(y_name) - .pred)
  }
  preds <- sample_predictions  %>%
    dplyr::inner_join(original_data %>%
                        parsnip::add_rowindex() %>%
                        dplyr::select(-!!rlang::sym(y_name)),
                      by = ".row")
  return(preds)
}
# ------------------------------------------------------------------------------
