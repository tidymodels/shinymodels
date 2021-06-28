#' Visualizing observed vs. predicted values for a regression model
#'
#' This function allows you to plot the predicted values based on your tidymodels
#' results for a regression model against the observed/true values.
#' @param dat give the data frame that has the original data and the results of
#' collect_predictions()
#' @param y_name give the y/response variable for the model
#' @keywords models, regression, graphs
#' @export
#' @examples
#' @return
#' A ggplot object. 
plot_numeric_obs_pred <- function(dat, y_name) {
  p <- ggplot(dat, aes(x = !!sym(y_name), y = .pred)) +
    geom_abline(lty = 2, col = "green") +
    geom_point(aes(customdata = .row, color = .color)) +
    scale_color_identity() +
    coord_obs_pred() +
    labs(title = "Observed vs predicted") +
    theme_bw() +
    theme(legend.position = "none")
  ggplotly(p) %>%
    plotly::layout(dragmode = "select")
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
plot_numeric_res_pred <- function(dat, y_name) {
  p <- ggplot(dat, aes(x = !!sym(y_name), y = .residual)) +
    geom_abline(lty = 2, col = "green") +
    geom_point(aes(customdata = .row, color = .color)) +
    scale_color_identity() +
    coord_obs_pred() +
    labs(title = "Residuals vs predicted") +
    theme_bw() +
    theme(legend.position = "none")
  ggplotly(p) %>%
    plotly::layout(dragmode = "select")
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
  function(dat, numcol, y_name) {
    p <- ggplot(dat, aes(x = !!sym(numcol), y = .residual)) +
      geom_abline(lty = 2, col = "green") +
      geom_point(aes(customdata = .row, color = .color)) +
      scale_color_identity() +
      coord_obs_pred() +
      labs(title = paste(numcol, " Vs. residual")) +
      theme_bw() +
      theme(legend.position = "none")
    ggplotly(p) %>%
      plotly::layout(dragmode = "select")
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
plot_numeric_res_factorcol <-
  function(dat, factorcol, y_name) {
    p <-
      ggplot(dat, aes(y = reorder(!!sym(factorcol),.residual), x = .residual)) +
      geom_point(alpha = .3) +
      geom_abline(lty = 2, col = "green") +
      geom_point(aes(customdata = .row, color = .color)) +
      scale_color_identity() +
      coord_obs_pred() +
      labs(title = paste(factorcol, " Vs. residual"),
           y = factorcol) +
      theme_bw() +
      theme(legend.position = "none")
    ggplotly(p) %>%
      plotly::layout(dragmode = "select")
  }
