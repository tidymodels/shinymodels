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

# ------------------------------------------------------------------------------

dashboard_body <- function(...) {
  shinydashboard::dashboardBody(
    dashboard_css(), ...
  )
}

dashboard_css <- function() {
  htmltools::htmlDependency(
    name = "shinymodels-custom-css",
    version = "1.0",
    src = "www",
    package = "shinymodels",
    stylesheet = "dashboard-styles.css"
  )
}

# ------------------------------------------------------------------------------

#' Gets the config and translate to a sentence with the parameter values
#'
#' This function takes result of [organize_data], predictions across all models,
#' and the names of the tuning parameters to return a sentence with the default
#' parameter values.
#' @param x The [organize_data()] result.
#' @param performance The dataframe with performance metrics for each candidate model.
#' @param predictions The dataframe with predictions across all models.
#' @param tuning_param The names of the tuning parameters.
#' @param input The [DT::datatable] object.
#' @export
#' @return
#' A sentence.
display_selected <- function(x, performance, predictions, tuning_param, input) {
  # return null if there are no tuning parameters
  if (length(tuning_param) == 0) {
    return(invisible(NULL))
  }
  # Get the config and translate to a sentence with the parameter values
  sel_config <- performance$.config[input$metrics_rows_selected]
  # distinguish between no tuning parameters and no selected rows yet
  if (length(sel_config) == 0) {
    sel_config <- x$default_config
  }
  values <- predictions[predictions$.config == sel_config, tuning_param]
  values <- values[!duplicated(values), ]
  values <- as.data.frame(values)
  values <- format(values, digits = 3, scientific = FALSE)
  values <- paste(names(values), "=", values, collapse = ", ")
  paste("Selected model:", values)
}

# ------------------------------------------------------------------------------
# A general wrapper to catch and suppress a specific ggplot warning
quietly_run <- function(expr, warn_pattern = "Ignoring unknown aesthetics") {
  withCallingHandlers(
    warning = function(cnd) {
      if (grepl(warn_pattern, cnd$message)) {
        rlang::cnd_muffle(cnd)
      }
    },
    expr
  )
}

# ------------------------------------------------------------------------------
# Create the performance object with performance metrics for each candidate model
#' This function takes result of [organize_data()] to calculate and reformat
#' performance metrics for each candidate model.
#'
#' @param x The [organize_data()] result.
#' @details
#' For objects that were produced by one of the racing functions, the results
#' are restricted to tuning parameter combinations that have results for all of
#' the resamples. In other words, only the models left at the end of the race
#' will be shown to the users.
#' @export
#' @return
#' A data frame.

performance_object <- function(x) {
  obj <- x$tune_results %>%
    tune::collect_metrics()
  if (inherits(x$tune_results, "last_fit")) {
    obj <- dplyr::rename(obj, mean = .estimate) %>%
      dplyr::select(-.estimator)
  } else if (inherits(x$tune_results, "tune_race")) {
    complete_set <- max(obj$n)
    obj <- dplyr::filter(obj, n == complete_set)
  } else {
    obj <- dplyr::select(obj, -.estimator, -n, -std_err)
  }
  dplyr::relocate(obj, metric = .metric, estimate = mean)
}

# ------------------------------------------------------------------------------
# Modify the value of the ggplotly() value to let ggplotly() know about the size
# of it's output container (only works when being called within a renderPlotly() context)

ggplotly2 <- function(x, ...) {
  info <- shiny::getCurrentOutputInfo()
  height <- if (is.function(info$height)) info$height()
  width <- if (is.function(info$width)) info$width()
  gg <- plotly::ggplotly(x, width = width, height = height, ...)
  gg$x$data <- lapply(gg$x$data, function(x) {
    x$hoveron <- NULL
    x
  })
  gg
}
