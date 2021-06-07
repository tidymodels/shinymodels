#' Observed vs. predicted function
#'
#' This function allows you to plot the predicted values from your model against the observed/true values.
#' @param original_data give the original dataset you used for modeling
#' @param fit_samples_obj give the object you got using tidymodels::fit_resamples
#' @keywords observed vs. predicted
#' @export
#' @examples
#' plot_numeric_obs_pred()
plot_numeric_obs_pred <- function(original_data, fit_resamples_obj){
  y_name <- tune::.get_tune_outcome_names(fit_resamples_obj)
  holdout_predictions <-
    fit_resamples_obj %>%
    collect_predictions(summarize = TRUE) %>% # <- 1 row per training set row
    inner_join(
      original_data %>% add_rowindex() %>% select(-all_of(y_name)),
      by = ".row"
    ) %>%
    mutate(residual = !!sym(y_name) - .pred)
  holdout_predictions %>%
    ggplot(aes(x = !!sym(y_name), y = .pred)) +
    geom_abline(lty = 2) +
    geom_point(alpha = .3) +
    coord_obs_pred() +
    ggtitle("Observed vs predicted")
}


#' Residuals vs. predicted function
#'
#' This function allows you to plot the predicted values from your model against the residuals.
#' @param original_data give the original dataset you used for modeling
#' @param fit_samples_obj give the object you got using tidymodels::fit_resamples
#' @keywords residuals vs. predicted
#' @export
#' @examples
#' plot_numeric_res_pred()
plot_numeric_res_pred <- function(original_data, fit_resamples_obj){
  y_name <- .get_tune_outcome_names(fit_resamples_obj)
  holdout_predictions <-
    fit_resamples_obj %>%
    collect_predictions(summarize = TRUE) %>% # <- 1 row per training set row
    inner_join(
      original_data %>% add_rowindex() %>% select(-all_of(y_name)),
      by = ".row"
    ) %>%
    mutate(residual = !!sym(y_name) - .pred)
  holdout_predictions %>%
    ggplot(aes(x = .pred, y = residual)) +
    geom_hline(yintercept = 0, lty = 2) +
    geom_point(alpha = .3) +
    ggtitle("Residuals vs predicted")
}

#' Residuals vs. numeric column function
#'
#' This function allows you to plot the residuals from your model against any of the numeric column used for modeling.
#' @param original_data give the original dataset you used for modeling
#' @param fit_samples_obj give the object you got using tidymodels::fit_resamples
#' @param num_column give the numerical column you want to plot against the residuals
#' @keywords residuals vs. numerical column
#' @export
#' @examples
#' plot_numeric_res_numcol()
plot_numeric_res_numcol <- function(original_data, fit_resamples_obj, num_column){
  num_column <- enexpr(num_column)
  y_name <- .get_tune_outcome_names(fit_resamples_obj)
  holdout_predictions <-
    fit_resamples_obj %>%
    collect_predictions(summarize = TRUE) %>% # <- 1 row per training set row
    inner_join(
      original_data %>% add_rowindex() %>% select(-all_of(y_name)),
      by = ".row"
    ) %>%
    mutate(residual = !!sym(y_name) - .pred)
  holdout_predictions %>%
    ggplot(aes(x = !!num_column, y = residual)) +
    geom_point(alpha = .3) +
    ggtitle(paste(num_column, " Vs. residual"))
}

#' Residuals vs. factor column function
#'
#' This function allows you to plot the residuals from your model against any of the factor column used for modeling.
#' @param original_data give the original dataset you used for modeling
#' @param fit_samples_obj give the object you got using tidymodels::fit_resamples
#' @param fac_column give the factor column you want to plot against the residuals
#' @keywords residuals vs. factor column
#' @export
#' @examples
#' plot_numeric_res_faccol()
plot_numeric_res_faccol <- function(original_data, fit_resamples_obj, fac_column){
  fac_column <- enexpr(fac_column)
  y_name <- .get_tune_outcome_names(fit_resamples_obj)
  holdout_predictions <-
    fit_resamples_obj %>%
    collect_predictions(summarize = TRUE) %>% # <- 1 row per training set row
    inner_join(
      original_data %>% add_rowindex() %>% select(-all_of(y_name)),
      by = ".row"
    ) %>%
    mutate(residual = !!sym(y_name) - .pred)
  holdout_predictions %>%
    ggplot(aes(y = reorder(!!fac_column, residual), x = residual)) +
    geom_point(alpha = .3) +
    ylab(paste(fac_column)) +
    ggtitle(paste(fac_column, " Vs. residual"))
}
