#' Extract data from objects to use in a shiny app
#'
#' This function joins the result of [tune::fit_resamples()]  to the original
#' dataset to give a dataframe that can be an input for a Shiny app.
#' @param x The [tune::fit_resamples()] result.
#' @param cols The columns to display while hovering.
#' @param ... Other parameters not currently used.
#' @keywords models,  regression, graphs, classes, classif
#' @export
#' @return
#' A data frame.
organize_data <- function(x, cols = NULL, ...) {
  UseMethod("organize_data")
}

#' @export
#' @rdname organize_data
organize_data.default <- function(x, cols = NULL, ...) {
  rlang::abort("No `organize_data()` exists for this type of object.")
}

#' @export
#' @rdname organize_data
organize_data.tune_results <-
  function(x,
           cols = NULL,
           ...) {
    expr <- rlang::enquo(cols)
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
    preds <- sample_predictions %>%
      dplyr::inner_join(original_data %>%
                          parsnip::add_rowindex() %>%
                          dplyr::select(-!!rlang::sym(y_name)),
                        by = ".row")
    pos <- tidyselect::eval_select(expr, data = preds)
    var <- rlang::set_names(preds[pos], names(pos))
    preds$.hover <- format_hover(var, ...)
    app_type <- get_app_type(original_data[[y_name]])
    new_shiny_data(preds, y_name, app_type)
  }
# ------------------------------------------------------------------------------

new_shiny_data <- function(predictions, y_name, subclass) {
  if (!inherits(predictions, "data.frame")) {
    rlang::abort("predictions should be a data frame")
  }
  if (nrow(predictions) == 0) {
    rlang::abort("there should be at least one row of predictions")
  }
  # check to see if the right prediction columns are there
  # TODO
  # Think about other ways things could go wrong
  if (!is.character(y_name)) {
    rlang::abort("y_name should be a character string")
  }
  res <- list(predictions = predictions, y_name = y_name)
  result <- structure(res, class = c(paste0(subclass, "_shiny_data"), "shiny_data"))
  attr(result, "app_type") <- subclass
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

#' Returns the class, app type, y name, and number of rows of an object of
#' `shiny_data` class
#'
#' This is a print method for a shiny_data class
#' @param x an object of class shiny_data
#' @param ... Other parameters not currently used
#' @export
print.shiny_data <- function(x, cols = NULL, ...) {
  string <- paste(
    paste("classes: ", paste0(class(x), collapse = ", ")),
    paste("app_type:", attr(x, "app_type")),
    paste("y_name:", x$y_name),
    paste("nrows:", nrow(x$predictions)),
    sep = "\n"
  )
  cat(string)
}
