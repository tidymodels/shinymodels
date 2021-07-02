#' Visualizing observed vs. predicted values for a regression model
#'
#' This function allows you to plot the predicted values based on your tidymodels
#' results for a regression model against the observed/true values.
#' @param dat The data frame that has the original data and the results of
#' [tune::collect_predictions()].
#' @param y_name The y/response variable for the model.
#' @keywords models, regression, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_numeric_obs_pred <- function(dat, y_name, tooltip=c("x", "gear", "hp")) {
  p <- ggplot2::ggplot(dat, ggplot2::aes(x = !!rlang::sym(y_name), y = .pred)) +
    ggplot2::geom_abline(lty = 2, col = "green") +
    ggplot2::geom_point(ggplot2::aes(customdata = .row, color = .color)) +
    ggplot2::scale_color_identity() +
    tune::coord_obs_pred() +
    ggplot2::labs(title = "Observed vs predicted") +
    ggplot2::theme(legend.position = "none")
  plotly::ggplotly(p, tooltip = tooltip) %>%
    plotly::layout(dragmode = "select")
}

#' Visualizing residuals vs. predicted values for a regression model
#'
#' This function allows you to plot the predicted values based on your tidymodels
#' result for a regression model against the residuals.
#' @inheritParams plot_numeric_obs_pred
#' @keywords models, regression, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_numeric_res_pred <- function(dat, y_name, tooltip=c("x", "gear", "hp")) {
  p <- ggplot2::ggplot(dat, ggplot2::aes(x = !!rlang::sym(y_name), y = .residual)) +
    ggplot2::geom_abline(lty = 2, col = "green") +
    ggplot2::geom_point(ggplot2::aes(customdata = .row, color = .color)) +
    ggplot2::scale_color_identity() +
    tune::coord_obs_pred() +
    ggplot2::labs(title = "Residuals vs predicted") +
    ggplot2::theme(legend.position = "none")
  plotly::ggplotly(p, tooltip=tooltip) %>%
    plotly::layout(dragmode = "select")
}

#' Visualizing residuals vs. a numeric column for a regression model
#'
#' This function allows you to plot the residuals based on tidymodels result for
#'  a regression model against any of the numeric column used for modeling.
#' @inheritParams plot_numeric_obs_pred
#' @param numcol The numerical column you want to plot against the residuals.
#' @keywords models, regression, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_numeric_res_numcol <-
  function(dat, numcol, y_name, tooltip=c("x", "gear", "hp")) {
    p <- ggplot2::ggplot(dat, ggplot2::aes(x = !!rlang::sym(numcol), y = .residual)) +
      ggplot2::geom_abline(lty = 2, col = "green") +
      ggplot2::geom_point(ggplot2::aes(customdata = .row, color = .color)) +
      ggplot2::scale_color_identity() +
      tune::coord_obs_pred() +
      ggplot2::labs(title = paste(numcol, " Vs. residual")) +
      ggplot2::theme(legend.position = "none")
    plotly::ggplotly(p, tooltip=tooltip) %>%
      plotly::layout(dragmode = "select")
  }

#' Visualizing residuals vs. a factor column for a regression model
#'
#' This function allows you to plot the residuals based on tidymodels result for
#' a regression model against any of the factor column used for modeling.
#' @inheritParams plot_numeric_obs_pred
#' @param factorcol The factor column you want to plot against the residuals.
#' @keywords models, regression, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_numeric_res_factorcol <-
  function(dat, factorcol, y_name, tooltip=c("x", "gear", "hp")) {
    p <-
      ggplot2::ggplot(dat, ggplot2::aes(y = stats::reorder(!!rlang::sym(factorcol),.residual), x = .residual)) +
      ggplot2::geom_point(alpha = .3) +
      ggplot2::geom_abline(lty = 2, col = "green") +
      ggplot2::geom_point(ggplot2::aes(customdata = .row, color = .color)) +
      ggplot2::scale_color_identity() +
      tune::coord_obs_pred() +
      ggplot2::labs(title = paste(factorcol, " Vs. residual"),
           y = factorcol) +
      ggplot2::theme(legend.position = "none")
    plotly::ggplotly(p, tooltip=tooltip) %>%
      plotly::layout(dragmode = "select")
  }
