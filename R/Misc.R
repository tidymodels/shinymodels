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

#' Extracts data from objects to use in a shiny app.
#'
#' This function joins the result of [tune::fit_resamples()]  to the original dataset
#' to give a dataframe that can be a Shiny input.
#' @param res_object The [tune::fit_resamples()] result.
#' @param original_data The original dataset.
#' @keywords models,  regression, graphs, classes, classif
#' @export
#' @return
#' A data frame.
organize_data <- function(res_object, original_data) {
  if ("tune_results" %in% class(res_object)){
    y_name <- tune::.get_tune_outcome_names(res_object)
    if (!(y_name %in% names(original_data))) {
      rlang::abort(glue::glue("'{y_name}' is not a column in the orignal data"))
    }
    sample_predictions <-
      tune::collect_predictions(res_object, summarize = TRUE)
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
  else{
    rlang::abort("No `collect_predictions()` exists for this type of object")
  }
}
