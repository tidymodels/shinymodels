#' Visualizing observed vs. predicted values for a regression model
#'
#' This function allows you to plot the predicted values based on your tidymodels
#' results for a regression model against the observed/true values.
#' @param original_data give the original dataset you used for modeling
#' @param object give the object you got using tidymodels::fit_resamples
#' @keywords models, regression, graphs
#' @export
#' @examples
#' @return
#' plot_numeric_obs_pred()
plot_numeric_obs_pred <- function(original_data, object) {
  y_name <- tune::.get_tune_outcome_names(object)
  holdout_predictions <-
    object %>%
    collect_predictions(summarize = TRUE) %>% # <- 1 row per training set row
    inner_join(original_data %>% add_rowindex() %>% select(-all_of(y_name)),
               by = ".row") %>%
    mutate(residual = !!sym(y_name) - .pred)
  holdout_predictions %>%
    ggplot(aes(x = !!sym(y_name), y = .pred)) +
    geom_abline(lty = 2) +
    geom_point(alpha = .3) +
    coord_obs_pred() +
    labs(title = "Observed vs predicted")
}

#' Visualizing residuals vs. predicted values for a regression model
#'
#' This function allows you to plot the predicted values based on your tidymodels
#' result for a regression model against the residuals.
#' @inheritParams plot_twoclass_obs_pred
#' @keywords models, regression, graphs
#' @export
#' @examples
#' @return
#' plot_numeric_res_pred()
plot_numeric_res_pred <- function(original_data, object) {
  y_name <- .get_tune_outcome_names(object)
  holdout_predictions <-
    object %>%
    collect_predictions(summarize = TRUE) %>% # <- 1 row per training set row
    inner_join(original_data %>% add_rowindex() %>% select(-all_of(y_name)),
               by = ".row") %>%
    mutate(residual = !!sym(y_name) - .pred)
  holdout_predictions %>%
    ggplot(aes(x = .pred, y = residual)) +
    geom_hline(yintercept = 0, lty = 2) +
    geom_point(alpha = .3) +
    labs(title = "Residuals vs predicted")
}

#' Visualizing residuals vs. a numeric column for a regression model
#'
#' This function allows you to plot the residuals based on tidymodels result for
#'  a regression model against any of the numeric column used for modeling.
#' @inheritParams plot_twoclass_obs_pred
#' @param numcol give the numerical column you want to plot against the residuals
#' @keywords models, regression, graphs
#' @export
#' @examples
#' @return
#' plot_numeric_res_numcol()
plot_numeric_res_numcol <-
  function(original_data, object, numcol) {
    numcol <- enexpr(numcol)
    y_name <- .get_tune_outcome_names(object)
    holdout_predictions <-
      object %>%
      collect_predictions(summarize = TRUE) %>% # <- 1 row per training set row
      inner_join(original_data %>% add_rowindex() %>% select(-all_of(y_name)),
                 by = ".row") %>%
      mutate(residual = !!sym(y_name) - .pred)
    holdout_predictions %>%
      ggplot(aes(x = !!numcol, y = residual)) +
      geom_point(alpha = .3) +
      labs(title = paste(numcol, " Vs. residual"))
  }

#' Visualizing residuals vs. a factor column for a regression model
#'
#' This function allows you to plot the residuals based on tidymodels result for
#' a regression model against any of the factor column used for modeling.
#' @inheritParams plot_twoclass_obs_pred
#' @param factorcol give the factor column you want to plot against the residuals
#' @keywords models, regression, graphs
#' @export
#' @examples
#' @return
#' plot_numeric_res_factorcol()
plot_numeric_res_faccol <-
  function(original_data, object, factorcol) {
    factorcol <- enexpr(factorcol)
    y_name <- .get_tune_outcome_names(object)
    holdout_predictions <-
      object %>%
      collect_predictions(summarize = TRUE) %>% # <- 1 row per training set row
      inner_join(original_data %>% add_rowindex() %>% select(-all_of(y_name)),
                 by = ".row") %>%
      mutate(residual = !!sym(y_name) - .pred)
    holdout_predictions %>%
      ggplot(aes(y = reorder(!!factorcol, residual), x = residual)) +
      geom_point(alpha = .3) +
      labs(title = paste(factorcol, " Vs. residual"),
           y = paste(factorcol))
  }
