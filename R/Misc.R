#' Returns the first level of a classification model
#'
#' This function takes data, `event_level` and `y_name`, as arguments and
#' returns the first level in a classification data.
#' @inheritParams plot_twoclass_obs_pred
#' @keywords models, classes, classif
#' @export
#' @return
#' A string.
first_level <- function(dat, event_level = c("first", "second"), y_name) {
  event_level <- rlang::arg_match(event_level)
  if (!y_name %in% colnames(dat)) {
    rlang::abort(glue::glue("'{y_name}' is not a column in the dataset"))
  }
  our_factor <- dat[[y_name]]
  our_levels <- levels(our_factor)
  if (length(our_levels) == 2) {
    if (event_level == "first") {
      prob_name <- our_levels[1]
    } else if (event_level == "second") {
      prob_name <- our_levels[2]
    }
    return(prob_name)
  }
  else {
    rlang::abort("first_level() can only be used for a two-class variable")
  }
}


#' Returns the name of predictions column for the first level variable
#'
#' This function takes prediction data, the event level, and the outcome name as
#'  arguments and returns the predictions column for the first level variable.
#' @inheritParams plot_twoclass_obs_pred
#' @keywords models, classes, classif
#' @export
#' @return
#' A symbol.
first_class_prob_name <- function(dat, event_level, y_name) {
  return(rlang::sym(paste0(
    ".pred_",
    first_level(dat, event_level, y_name)
  )))
}

#' Returns the hover columns to be displayed in interactive plots
#'
#' This function takes `.hover` argument and returns the output that can
#' be used as a test aesthetics in a [ggplot2::ggplot()] object to customize tooltip.
#' @param x A data frame with columns to be displayed in the hover.
#' @param ... Arguments passed to [format()] to the column(s) selected to be seen
#' in the hover/tooltip.
#' @keywords models
#' @export
#' @return
#' A character vector.
format_hover <- function(x, ...) {
  x <- as.data.frame(x)
  x <- format(x, digits = 3, ...) # x is now a matrix
  # # This returns a string
  apply(x, 1, function(x) paste0(names(x), ": ", x, collapse = "<br>"))
}

# ------------------------------------------------------------------------------

boxed <- function(x, title, input = character(1), width = 6) {
  if (length(input) > 0) {
    res <-
      shinydashboard::box(
        x,
        solidHeader = TRUE,
        collapsible = TRUE,
        title = title,
        status = "primary",
        width = width,
        collapsed = TRUE
      )
  } else {
    res <- NULL
  }
  res
}

