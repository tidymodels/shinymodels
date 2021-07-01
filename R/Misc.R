#' Returns the first level of a classification model
#'
#' This function takes the data, `event_level`, and `y_name` as arguments and
#' returns the first level in a classification data.
#' @param dat The dataframe obtained by merging the results from tuning functions
#' with the original data
#' @param event_level A single character value for the level corresponding to the event.
#' @param y_name The response variable for the model.
#' @keywords models, classes, classif
#' @export
#' @return
#' A string.
first_level <- function(dat, event_level=c("first", "second"), y_name) {
  event_level <- rlang::arg_match(event_level)
  if (!y_name %in% colnames(dat)) {
    rlang::abort(glue::glue("'{y_name}' is not a column in the dataset"))
  }
  our_factor <- dat[[y_name]]
  our_levels <- levels(our_factor)
  if (length(our_levels)==2){
    if (event_level == "first") {
      prob_name <- our_levels[1]
    } else if (event_level == "second"){
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
#' This function takes the predictions object, event_level, and y_name as
#'  arguments and returns the predictions column for the first level variable.
#' @inheritParams first_level
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
