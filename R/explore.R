#' explore()
#' Given an object of class `shiny_data`, lanches a shiny app
#'
#' This function joins the result of [tune::fit_resamples()]  to the original dataset
#' to give a dataframe that can be a Shiny input.
#' @param x The [tune::fit_resamples()] result.
#' @param ... Other parameters not currently used.
#' @keywords models,  regression, graphs, classes, classif
#' @export
#' @return
#' A data frame.
organize_data <- function(x, ...) {
  UseMethod("organize_data")
}

#' @export
#' @rdname organize_data
organize_data.default <- function(x,  ...) {
  rlang::abort("No `organize_data()` exists for this type of object.")
}

#' @export
#' @rdname organize_data
organize_data.tune_results <-
  function(x,
           ...) {
    #TODO
    original_data <- x$splits[[1]]$data
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
    app_type <- get_app_type(original_data[[y_name]])
    new_shiny_data(preds, y_name, app_type)
  }
# ------------------------------------------------------------------------------
