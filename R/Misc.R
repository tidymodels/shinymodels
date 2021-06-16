#' Rwturns the first level of a classification model
#'
#' This function takes the data, event_level, and y_name as arguments and
#' returns the first level in a classification data.
#' @param data give the dataset you are trying find the first level for
#' @param event_level give the original event level for the dataset
#' @param y_name give the response variable for the dataset
#' @keywords models, classes, classif
#' @export
#' @examples
#' @return
#' first_level()
first_level <- function(data, event_level, y_name) {
  our_factor <- data[[y_name]]
  our_levels <- levels(our_factor)
  if (event_level == "first") {
    prob_name <- paste(our_levels[1])
  } else {
    prob_name <- paste(our_levels[2])
  }
  return(prob_name)
}


#' Returns the name of predictions column for the first level variable
#'
#' This function takes the predictions object, event_level, and y_name as
#'  arguments and returns the predictions column for the first level variable.
#' @param predictions_object give the predictions object from tidymodels
#' @param event_level give the original event level for the dataset
#' @param y_name give the response variable for the dataset
#' @keywords models, classes, classif
#' @export
#' @examples
#' @return
#' first_class_prob_name ()
first_class_prob_name <- function(predictions_obj, event_level, y_name) {
  return(sym(paste0(
    ".pred_",
    first_level(sample_predictions, event_level, y_name)
  )))
}
