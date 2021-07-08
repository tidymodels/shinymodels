#' Visualizing observed vs. predicted values for a regression model
#'
#' This function plots the predicted values based on {tidymodels}
#' results for a regression model against the observed values.
#' @param dat The predictions data frame in the [shinymodels::organize_data()]
#' result. Following variables are required: `.outcome`, `.pred`, `.color`, and `.hover`.
#' @param y_name The y/response variable for the model.
#' @keywords models, regression, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_numeric_obs_pred <- function(dat, y_name) {
  p <- ggplot2::ggplot(dat, ggplot2::aes(x = .outcome, y = .pred)) +
    ggplot2::geom_abline(lty = 2, col = "green") +
    ggplot2::geom_point(ggplot2::aes(
      customdata = .row,
      color = .color,
      text = .hover
    )) +
    ggplot2::scale_color_identity() +
    tune::coord_obs_pred() +
    ggplot2::labs(title = "Observed vs. predicted", x = y_name) +
    ggplot2::theme(legend.position = "none")
  plotly::ggplotly(p, tooltip = "text") %>%
    plotly::layout(dragmode = "select")
}

#' Visualizing residuals vs. predicted values for a regression model
#'
#' This function plots the predicted values against the residuals for a
#' regression model in {tidymodels}.
#' @inheritParams plot_numeric_obs_pred
#' @keywords models, regression, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_numeric_res_pred <- function(dat, y_name) {
  p <- ggplot2::ggplot(dat, ggplot2::aes(x = .outcome, y = .residual)) +
    ggplot2::geom_abline(lty = 2, col = "green") +
    ggplot2::geom_point(ggplot2::aes(
      customdata = .row,
      color = .color,
      text = .hover
    )) +
    ggplot2::scale_color_identity() +
    tune::coord_obs_pred() +
    ggplot2::labs(title = "Residuals vs. predicted") +
    ggplot2::theme(legend.position = "none")
  plotly::ggplotly(p, tooltip = "text") %>%
    plotly::layout(dragmode = "select")
}

#' Visualizing residuals vs. a numeric column for a regression model
#'
#' This function plots the residuals against a numeric column
#' for a regression model in {tidymodels}.
#' @inheritParams plot_numeric_obs_pred
#' @param numcol The numerical column to plot against the residuals.
#' @keywords models, regression, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_numeric_res_numcol <-
  function(dat, numcol, y_name) {
    p <- ggplot2::ggplot(dat, ggplot2::aes(x = !!rlang::sym(numcol), y = .residual)) +
      ggplot2::geom_abline(lty = 2, col = "green") +
      ggplot2::geom_point(ggplot2::aes(
        customdata = .row,
        color = .color,
        text = .hover
      )) +
      ggplot2::scale_color_identity() +
      tune::coord_obs_pred() +
      ggplot2::labs(title = paste(numcol, " vs. residual")) +
      ggplot2::theme(legend.position = "none")
    plotly::ggplotly(p, tooltip = "text") %>%
      plotly::layout(dragmode = "select")
  }

#' Visualizing residuals vs. a factor column for a regression model
#'
#' This function plots the residuals against a factor column
#' for a regression model in {tidymodels}.
#' @inheritParams plot_numeric_obs_pred
#' @param factorcol The factor column to plot against the residuals.
#' @keywords models, regression, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_numeric_res_factorcol <-
  function(dat, factorcol, y_name) {
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
      )) +
      ggplot2::scale_color_identity() +
      tune::coord_obs_pred() +
      ggplot2::labs(
        title = paste(factorcol, " vs. residual"),
        y = factorcol
      ) +
      ggplot2::theme(legend.position = "none")
    plotly::ggplotly(p, tooltip = "text") %>%
      plotly::layout(dragmode = "select")
  }
