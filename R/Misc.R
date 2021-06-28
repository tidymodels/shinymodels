#' Returns the first level of a classification model
#'
#' This function takes the data, `event_level`, and `y_name` as arguments and
#' returns the first level in a classification data.
#' @param dat give the dataframe obtained by merging the results from tuning functions
#' with the original data
#' @param event_level A single character value for the level corresponding to the event.
#' @param y_name give the response variable for the model
#' @keywords models, classes, classif
#' @export
#' @examples
#' @return
#' first_level()
first_level <- function(dat, event_level=c("first", "second"), y_name) {
  event_level <- rlang::arg_match(event_level)
  our_factor <- dat[[y_name]]
  our_levels <- levels(our_factor)
  if (event_level == "first") {
    prob_name <- paste(our_levels[1])
  } else if (event_level == "second"){
    prob_name <- paste(our_levels[2])
  }
  return(prob_name)
}


#' Returns the name of predictions column for the first level variable
#'
#' This function takes the predictions object, event_level, and y_name as
#'  arguments and returns the predictions column for the first level variable.
#' @inheritParams first_level
#' @keywords models, classes, classif
#' @export
#' @examples
#' @return
#' first_class_prob_name()
first_class_prob_name <- function(dat, event_level, y_name) {
  return(sym(paste0(
    ".pred_",
    first_level(dat, event_level, y_name)
  )))
}

#' Extracts data from objects to use in a shiny app. 
#'
#' This function joins the result of fit_resamples() to the original dataset
#' to give a dataframe that can be a Shiny input.
#' @param res_object give the fit_resamples() result
#' @param original_data give the original dataset
#' @keywords models,  regression, graphs, classes, classif
#' @export
#' @examples
#' @return
#' organize_data()
organize_data <- function(res_object, original_data) {
  y_name <- .get_tune_outcome_names(res_object)
  sample_predictions <-
    collect_predictions(res_object, summarize = TRUE)
  if (is.numeric(original_data[[y_name]]) == TRUE) {
    sample_predictions <- sample_predictions %>%
      mutate(.residual = !!sym(y_name) - .pred)
  }
  preds <- sample_predictions  %>%
    inner_join(original_data %>% add_rowindex() %>% select(-!!sym(y_name)),
               by = ".row")
  return(preds)
}
