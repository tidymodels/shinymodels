#' Extract data from objects to use in a shiny app
#'
#' This function joins the result of [tune::fit_resamples()]  to the original
#' dataset to give a list that can be an input for the Shiny app.
#' @param x The [tune::fit_resamples()] result.
#' @param hover_cols The columns to display while hovering.
#' @param ... Other parameters not currently used.
#' @details The default configuration is based on **the optimal value** of the first metric.
#' @keywords models,  regression, graphs, classes, classif
#' @export
#' @return
#' A list with elements data frame and character vectors. The data frame includes
#'  an outcome variable `.outcome`, a prediction variable `.pred`, model
#'  configuration variable `.config`, and hovering columns `.hover`.
organize_data <- function(x, hover_cols = NULL, ...) {
  UseMethod("organize_data")
}

#' @export
#' @rdname organize_data
organize_data.default <- function(x, hover_cols = NULL, ...) {
  rlang::abort("No `organize_data()` exists for this type of object.")
}

#' @export
#' @rdname organize_data
organize_data.tune_results <-
  function(x,
           hover_cols = NULL,
           ...) {
    hover_expr <- rlang::enquo(hover_cols)
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
    rn_lst <- list(.outcome = y_name)
    sample_predictions <-
      tune::collect_predictions(x, summarize = TRUE) %>%
      rename(!!!rn_lst)
    if (is.numeric(sample_predictions$.outcome)) {
      sample_predictions <- sample_predictions %>%
        dplyr::mutate(.residual = .outcome - .pred)
    }
    num_cols <- vapply(original_data, is.numeric, logical(1))
    num_col_names <- names(num_cols)[num_cols]
    fac_cols <- vapply(original_data, is.factor, logical(1))
    fac_col_names <- names(fac_cols)[fac_cols]
    preds <- sample_predictions %>%
      dplyr::inner_join(original_data %>%
        parsnip::add_rowindex(),
      by = ".row"
      )
    if (quo_is_null(hover_expr)) {
      var <- preds %>% dplyr::select(dplyr::all_of(y_name))
    } else {
      pos <- tidyselect::eval_select(hover_expr, data = preds)
      var <- rlang::set_names(preds[pos], names(pos))
    }
    preds$.hover <- format_hover(var, ...)
    app_type <- get_app_type(original_data[[y_name]])
    default_config <- tune::select_best(x, tune::.get_tune_metric_names(x)[1])$.config
    new_shiny_data(preds, y_name, app_type, num_col_names, fac_col_names, x, default_config)
  }
# ------------------------------------------------------------------------------

new_shiny_data <- function(predictions, y_name, subclass, numeric_cols, factor_cols, x, default_config) {
  if (!inherits(predictions, "data.frame")) {
    rlang::abort("predictions should be a data frame")
  }
  if (nrow(predictions) == 0) {
    rlang::abort("there should be at least one row of predictions")
  }
  if (!(y_name %in% names(predictions))) {
    rlang::abort(glue::glue("'{y_name}' should be a column in the predictions"))
  }
  if (!is.character(y_name)) {
    rlang::abort("y_name should be a character string")
  }
  if (!is.character(numeric_cols)) {
    rlang::abort("numeric_cols should be a character string")
  }
  if (!is.character(factor_cols)) {
    rlang::abort("factor_cols should be a character string")
  }
  if (!is.character(default_config)) {
    rlang::abort("default_config should be a character string")
  }
  if (!(default_config %in% predictions$.config)) {
    rlang::abort("default_config should be a character string in predictions")
  }
  res <- list(
    predictions = predictions,
    y_name = y_name,
    app_type = subclass,
    default_config = default_config,
    num_cols = numeric_cols,
    fac_cols = factor_cols,
    tune_results = x
  )
  result <- structure(res, class = c(paste0(subclass, "_shiny_data"), "shiny_data"))
  result
}
# ------------------------------------------------------------------------------
get_app_type <- function(y) {
  if (is.numeric(y)) {
    res <- "reg"
  }
  else if (is.factor(y)) {
    if (nlevels(y) == 2) {
      res <- "two_cls"
    }
    else {
      res <- "multi_cls"
    }
  }
  else {
    rlang::abort("outcome should be factor or numeric")
  }
  res
}
# ------------------------------------------------------------------------------

#' Returns the class, app type, y name, and the number of rows of an object of
#' `shiny_data` class
#'
#' This is a print method for a shiny_data class
#' @param x an object of class shiny_data
#' @param ... Other parameters not currently used
#' @export
print.shiny_data <- function(x, ...) {
  string <- paste(
    paste("class: ", paste0(class(x), collapse = ", ")),
    paste("app_type:", x$app_type),
    paste("y_name:", x$y_name),
    paste("nrows:", nrow(x$predictions)),
    paste("tuning parameters:", .get_tune_parameter_names(x$tune_results)),
    sep = "\n"
  )
  cat(string)
}
