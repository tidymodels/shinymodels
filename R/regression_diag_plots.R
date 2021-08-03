#' Visualizing observed vs. predicted values for a regression model
#'
#' This function plots the predicted values against the observed values based on
#'  {tidymodels} results for a regression model.
#' @param dat The predictions data frame in the [organize_data()] result. Following
#' variables are required: `.outcome`, `.pred`, `.color`, and `.hover`.
#' @param y_name The y/response variable for the model.
#' @param alpha The opacity for the geom points.
#' @param size The size for the geom points.
#' @param source A character string of length 1 that matches the source argument
#' in event_data().
#' @keywords models, regression, graphs
#' @export
#' @return
#' A [plotly::ggplotly()] object.
plot_numeric_obs_pred <- function(dat, y_name, alpha = 1, size = 1, source = NULL) {
  p <- ggplot2::ggplot(dat, ggplot2::aes(x = .outcome, y = .pred)) +
    ggplot2::geom_abline(lty = 2, col = "green") +
    ggplot2::geom_point(
      ggplot2::aes(
        customdata = .row,
        color = .color,
        text = .hover
      ),
      alpha = alpha,
      size = size
    ) +
    ggplot2::scale_color_identity() +
    tune::coord_obs_pred() +
    ggplot2::labs(x = y_name, y = "Predicted") +
    ggplot2::theme(legend.position = "none")
  plotly::ggplotly(p, tooltip = "text", source = source) %>%
    plotly::layout(dragmode = "select")
}

#' Visualizing residuals vs. predicted values for a regression model
#'
#' This function plots the predicted values against the residuals based on
#' {tidymodels} results for a regression model.
#' @inheritParams plot_numeric_obs_pred
#' @keywords models, regression, graphs
#' @export
#' @return
#' A [plotly::ggplotly()] object.
plot_numeric_res_pred <- function(dat, y_name, alpha = 1, size = 1, source = NULL) {
  p <- ggplot2::ggplot(dat, ggplot2::aes(x = .pred, y = .residual)) +
    ggplot2::geom_hline(yintercept = 0, lty = 2, col = "green") +
    ggplot2::geom_point(ggplot2::aes(
      customdata = .row,
      color = .color,
      text = .hover
    ),
    alpha = alpha,
    size = size
    ) +
    ggplot2::scale_color_identity() +
    ggplot2::labs(
      x = "Predicted", y = "Residual"
    ) +
    ggplot2::theme(legend.position = "none")
  plotly::ggplotly(p, tooltip = "text", source = source) %>%
    plotly::layout(dragmode = "select")
}

#' Visualizing residuals vs. a numeric column for a regression model
#'
#' This function plots the residuals against a numeric column based on
#'  {tidymodels} results for a regression model.
#' @inheritParams plot_numeric_obs_pred
#' @param numcol The numerical column to plot against the residuals.
#' @keywords models, regression, graphs
#' @export
#' @return
#' A [plotly::ggplotly()] object.
plot_numeric_res_numcol <-
  function(dat, y_name, numcol, alpha = 1, size = 1, source = NULL) {
    p <- ggplot2::ggplot(dat, ggplot2::aes(x = !!rlang::sym(numcol), y = .residual)) +
      ggplot2::geom_hline(yintercept = 0, lty = 2, col = "green") +
      ggplot2::geom_point(ggplot2::aes(
        customdata = .row,
        color = .color,
        text = .hover
      ),
      alpha = alpha,
      size = size
      ) +
      ggplot2::scale_color_identity() +
      ggplot2::theme(legend.position = "none")
    plotly::ggplotly(p, tooltip = "text", source = source) %>%
      plotly::layout(dragmode = "select")
  }

#' Visualizing residuals vs. a factor column for a regression model
#'
#' This function plots the residuals against a factor column based on
#'  {tidymodels} results for a regression model.
#' @inheritParams plot_numeric_obs_pred
#' @param factorcol The factor column to plot against the residuals.
#' @keywords models, regression, graphs
#' @export
#' @return
#' A [plotly::ggplotly()] object.
plot_numeric_res_factorcol <-
  function(dat, y_name, factorcol, alpha = 1, size = 1, source = NULL) {
    p <-
      ggplot2::ggplot(dat, ggplot2::aes(y = stats::reorder(
        !!rlang::sym(factorcol),
        .residual
      ), x = .residual)) +
      ggplot2::geom_point(alpha = .3) +
      ggplot2::geom_abline(lty = 2, col = "green") +
      ggplot2::geom_point(ggplot2::aes(
        customdata = .row,
        color = .color,
        text = .hover
      ),
      alpha = alpha,
      size = size
      ) +
      ggplot2::scale_color_identity() +
      ggplot2::theme(legend.position = "none")
    plotly::ggplotly(p, tooltip = "text", source) %>%
      plotly::layout(dragmode = "select")
  }
