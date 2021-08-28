#' Visualizing predicted probability vs. true class for a multi-class classification
#' model
#'
#' This function plots the predicted probabilities against the observed class based on
#' {tidymodels} results for a multi-class classification model.
#' @param dat The predictions data frame in the [organize_data()] result. Following
#'  variables are required: `.outcome`, `.pred`, `.color`, and `.hover`.
#' @param y_name The y/response variable for the model.
#' @param prob_bins The desired `binwidth` for histogram.
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [plotly::ggplotly()] object.
plot_multiclass_obs_pred <-
  function(dat,
           y_name,
           prob_bins = 0.05) {
    dat <- dat %>%
      dplyr::select(-.pred_class) %>%
      tidyr::pivot_longer(
        cols = tidyselect::starts_with(".pred_"),
        names_to = "predicted_class",
        values_to = "predicted_probabilities"
      ) %>%
      mutate(
        predicted_class = gsub("\\.pred_", "", predicted_class),
        .outcome = paste("Truth:", .outcome)
      )
    p <- dat %>%
      dplyr::group_by(predicted_class) %>%
      ggplot2::ggplot(ggplot2::aes(x = predicted_probabilities)) +
      ggplot2::geom_histogram(binwidth = prob_bins, col = "white") +
      ggplot2::facet_grid(predicted_class ~ .outcome) +
      ggplot2::labs(x = "Predicted probabilities") +
      ggplot2::lims(x = 0:1)
    ggplotly2(p)
  }

#' Visualizing the confusion matrix for a classification model
#'
#' This function plots the confusion matrix for a classification model.
#' @inheritParams plot_multiclass_obs_pred
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [plotly::ggplotly()] object.
plot_multiclass_conf_mat <- function(dat) {
  # plotting
  p <- dat %>%
    yardstick::conf_mat(truth = .outcome, estimate = .pred_class) %>%
    ggplot2::autoplot()
  ggplotly2(p)
}

#' Visualizing the predicted probabilities vs. a numeric column for a
#' classification model
#'
#' This function plots the predicted probabilities against a numeric column based
#' on {tidymodels} results for a multi-class classification model.
#' @inheritParams plot_multiclass_obs_pred
#' @param numcol The numerical column to plot against the predicted probabilities.
#' @param alpha The opacity for the geom points.
#' @param size The size for the geom points.
#' @param source A character string of length 1 that matches the source argument
#' in event_data().
#' @param prob_scaling The boolean to turn on or off the logit scale for probability.
#' @param prob_breaks A vector to use for breaks in the probability levels.
#' @param prob_eps A small numerical constant to prevent division by zero.
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [plotly::ggplotly()] object.
plot_multiclass_pred_numcol <-
  function(dat,
           y_name,
           numcol,
           alpha = 1,
           size = 1,
           prob_scaling = FALSE,
           prob_breaks = (2:9) / 10,
           prob_eps = 0.001,
           source = NULL) {
    dat <- dat %>%
      dplyr::select(-.pred_class) %>%
      tidyr::pivot_longer(
        cols = tidyselect::starts_with(".pred_"),
        names_to = "predicted_class",
        values_to = "predicted_probabilities"
      )
    dat <- dat %>%
      dplyr::mutate(
        predicted_probabilities =
          dplyr::case_when(
            predicted_probabilities > 1 - prob_eps ~ 1 - prob_eps,
            predicted_probabilities < prob_eps ~ prob_eps,
            TRUE ~ predicted_probabilities
          )
      ) %>%
      mutate(
        predicted_class = gsub("\\.pred_", "", predicted_class),
        .outcome = paste("Truth:", .outcome)
      )
    p <- dat %>%
      dplyr::group_by(predicted_class, .outcome) %>%
      ggplot2::ggplot(ggplot2::aes(x = !!rlang::sym(numcol), y = predicted_probabilities)) +
      ggplot2::geom_point(ggplot2::aes(
        customdata = .row,
        color = .color,
        text = .hover
      ),
      alpha = alpha,
      size = size
      ) +
      ggplot2::facet_grid(predicted_class ~ .outcome) +
      ggplot2::scale_color_identity() +
      ggplot2::labs(y = "Predicted probabilities") +
      ggplot2::theme(legend.position = "none")
    if (prob_scaling) {
      p <- p + ggplot2::scale_y_continuous(
        oob = scales::squish_infinite,
        trans = scales::logit_trans(),
        breaks = prob_breaks
      )
    }
    fig <- ggplotly2(p, tooltip = "text", source = source) %>%
      plotly::layout(dragmode = "select") %>%
      plotly::toWebGL()
    fig
  }

#' Visualizing the predicted probabilities vs. a factor variable for a classification
#' model
#'
#' This function plots the predicted probabilities against a factor column based on
#' {tidymodels} results for a multi-class classification model.
#' @inheritParams plot_multiclass_obs_pred
#' @inheritParams plot_multiclass_pred_numcol
#' @param factorcol The factor column to plot against the predicted probabilities.
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [plotly::ggplotly()] object.
plot_multiclass_pred_factorcol <-
  function(dat,
           y_name,
           factorcol,
           alpha = 1,
           size = 1,
           prob_scaling = FALSE,
           prob_breaks = (2:9) / 10,
           prob_eps = 0.001,
           source = NULL) {
    dat <- dat %>%
      dplyr::select(-.pred_class) %>%
      tidyr::pivot_longer(
        cols = tidyselect::starts_with(".pred_"),
        names_to = "predicted_class",
        values_to = "predicted_probabilities"
      ) %>%
      mutate(
        predicted_class = gsub("\\.pred_", "", predicted_class),
        .outcome = paste("Truth:", .outcome)
      )
    dat <- dat %>%
      dplyr::mutate(
        predicted_probabilities =
          dplyr::case_when(
            predicted_probabilities > 1 - prob_eps ~ 1 - prob_eps,
            predicted_probabilities < prob_eps ~ prob_eps,
            TRUE ~ predicted_probabilities
          )
      )
    p <- dat %>%
      dplyr::group_by(predicted_class, .outcome) %>%
      ggplot2::ggplot(ggplot2::aes(x = predicted_probabilities, y = !!rlang::sym(factorcol))) +
      ggplot2::geom_point(ggplot2::aes(
        customdata = .row,
        color = .color,
        text = .hover
      ),
      alpha = alpha,
      size = size
      ) +
      ggplot2::facet_grid(predicted_class ~ .outcome) +
      ggplot2::scale_color_identity() +
      ggplot2::labs(x = "Predicted probabilities") +
      ggplot2::theme(legend.position = "none")
    if (prob_scaling) {
      p <- p + ggplot2::scale_x_continuous(
        oob = scales::squish_infinite,
        trans = scales::logit_trans(),
        breaks = prob_breaks
      )
    }
    fig <- ggplotly2(p, tooltip = "text", source = source) %>%
      plotly::layout(dragmode = "select") %>%
      plotly::toWebGL()
    fig
  }

#' Visualizing the ROC curve for a classification model
#'
#' This function plots the ROC curve for a classification model.
#' @inheritParams plot_multiclass_obs_pred
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [plotly::ggplotly()] object.
plot_multiclass_roc <-
  function(dat, y_name) {
    # Get a character vector of the class probabilities
    prob_cols <- grep("^\\.pred_", names(dat), value = TRUE)
    prob_cols <- prob_cols[prob_cols != ".pred_class"]
    # Splice them in
    res <- yardstick::roc_curve(dat, .outcome, !!!prob_cols)
    p <- ggplot2::autoplot(res)
    ggplotly2(p)
  }

#' Visualizing the PR curve for a classification model
#'
#' This function plots the full precision recall curve.
#' @inheritParams plot_multiclass_obs_pred
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [plotly::ggplotly()] object.
plot_multiclass_pr <-
  function(dat, y_name) {
    # Get a character vector of the class probabilities
    prob_cols <- grep("^\\.pred_", names(dat), value = TRUE)
    prob_cols <- prob_cols[prob_cols != ".pred_class"]
    # Splice them in
    res <- yardstick::pr_curve(dat, .outcome, !!!prob_cols)
    p <- ggplot2::autoplot(res)
    ggplotly2(p)
  }
