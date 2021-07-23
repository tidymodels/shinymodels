#' Visualizing predicted probability vs. true class for a two-class classification
#' model
#'
#' This function plots the predicted probabilities against the observed class based on
#' {tidymodels} results for a two-class classification model.
#' @param dat The predictions data frame in the [organize_data()] result. Following
#'  variables are required: `.outcome`, `.pred`, `.color`, and `.hover`.
#' @param y_name The y/response variable for the model.
#' @param event_level A single character value for the level corresponding to the event.
#' @param prob_bins The desired `binwidth` for histogram.
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_twoclass_obs_pred <-
  function(dat,
           y_name,
           event_level = "first",
           prob_bins = 0.025) {
    prob_name <-
      first_class_prob_name(dat, event_level, y_name)
    # plotting
    dat %>%
      ggplot2::ggplot(ggplot2::aes(x = !!prob_name)) +
      ggplot2::geom_histogram(binwidth = prob_bins, col = "white") +
      ggplot2::facet_wrap(~Class, # TODO
                          labeller = ggplot2::labeller(Class = ggplot2::label_both),
                          ncol = 1
      ) +
      ggplot2::labs(title = "Predicted probabilities vs. true class") +
      ggplot2::lims(x = 0:1)
  }

#' Visualizing the confusion matrix for a classification model
#'
#' This function plots the confusion matrix for a classification model.
#' @inheritParams plot_twoclass_obs_pred
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_twoclass_conf_mat <- function(dat) {
  # plotting
  dat %>%
    yardstick::conf_mat(truth = Class, estimate = .pred_class) %>%
    ggplot2::autoplot()
}

#' Visualizing the predicted probabilities vs. a numeric column for a
#' classification model
#'
#' This function plots the predicted probabilities against a numeric column based
#' on {tidymodels} results for a two-class classification model.
#' @inheritParams plot_twoclass_obs_pred
#' @param numcol The numerical column to plot against the predicted probabilities.
#' @param alpha The opacity for the geom points.
#' @param size The size for the geom points.
#' @param prob_scaling The boolean to turn on or off the logit scale for probability.
#' @param size The size for the geom points.
#' @param prob_breaks A vector to use for breaks in the probability levels.
#' @param prob_eps A small numerical constant to prevent division by zero.
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_twoclass_pred_numcol <-
  function(dat,
           y_name,
           numcol,
           alpha = 1,
           size = 1,
           prob_scaling = FALSE,
           event_level = "first",
           prob_breaks = (2:9) / 10,
           prob_eps = 0.001) {
    prob_name <- first_class_prob_name(dat, event_level, y_name)
    # plotting
    dat %>%
      dplyr::mutate(
        !!prob_name :=
          dplyr::case_when(
            !!prob_name > 1 - prob_eps ~ 1 - prob_eps,
            !!prob_name < prob_eps ~ prob_eps,
            TRUE ~ !!prob_name
          )
      )
    p <- ggplot2::ggplot(dat, ggplot2::aes(x = !!rlang::sym(numcol), y = !!prob_name)) +
      ggplot2::geom_point(ggplot2::aes(
        customdata = .row,
        color = .color,
        text = .hover
      ),
      alpha = alpha,
      size = size
      ) +
      ggplot2::facet_wrap(~Class,
                          labeller = ggplot2::labeller(Class = ggplot2::label_both),
                          ncol = 1
      ) +
      ggplot2::scale_color_identity() +
      ggplot2::labs(title = paste("Predicted probabilities vs. ", numcol)) +
      # # We should make a custom transformation that handles probs at 0 and 1
      # scale_y_continuous(trans = scales::logit_trans(), breaks = prob_breaks) +
      ggplot2::theme(legend.position = "none")
    if (prob_scaling) {
      p <- p + ggplot2::scale_y_continuous(trans = scales::logit_trans(), breaks = prob_breaks)
    }
    plotly::ggplotly(p, tooltip = "text") %>%
      plotly::layout(dragmode = "select")
  }

#' Visualizing the predicted probabilities vs. a factor variable for a classification
#' model
#'
#' This function plots the predicted probabilities against a factor column based on
#' {tidymodels} results for a two-class classification model.
#' @inheritParams plot_twoclass_obs_pred
#' @inheritParams plot_twoclass_pred_numcol
#' @param factorcol The factor column to plot against the predicted probabilities.
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_twoclass_pred_factorcol <-
  function(dat,
           y_name,
           factorcol,
           alpha = 1,
           size = 1,
           prob_scaling = FALSE,
           event_level = "first",
           prob_breaks = (2:9) / 10,
           prob_eps = 0.001) {
    prob_name <- first_class_prob_name(dat, event_level, y_name)
    # plotting
    dat %>%
      dplyr::mutate(
        !!prob_name :=
          dplyr::case_when(
            !!prob_name > 1 - prob_eps ~ 1 - prob_eps,
            !!prob_name < prob_eps ~ prob_eps,
            TRUE ~ !!prob_name
          )
      )
    p <- ggplot2::ggplot(dat, ggplot2::aes(x = !!prob_name, y = !!rlang::sym(factorcol))) +
      ggplot2::geom_point(ggplot2::aes(
        customdata = .row,
        color = .color,
        text = .hover
      ),
      alpha = alpha,
      size = size
      ) +
      ggplot2::facet_wrap(~Class,
                          labeller = ggplot2::labeller(Class = ggplot2::label_both),
                          ncol = 1
      ) +
      ggplot2::scale_color_identity() +
      ggplot2::labs(
        title = paste("Predicted probabilities vs. ", factorcol),
        y = factorcol
      ) +
      # # We should make a custom transformation that handles probs at 0 and 1
      # scale_y_continuous(trans = scales::logit_trans(), breaks = prob_breaks) +
      ggplot2::theme(legend.position = "none")
    if (prob_scaling) {
      p <- p + ggplot2::scale_x_continuous(trans = scales::logit_trans(), breaks = prob_breaks)
    }
    plotly::ggplotly(p, tooltip = "text") %>%
      plotly::layout(dragmode = "select")
  }

#' Visualizing the ROC curve for a classification model
#'
#' This function plots the ROC curve for a classification model.
#' @inheritParams plot_twoclass_obs_pred
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_twoclass_roc <-
  function(dat, y_name, event_level = "first") {
    prob_name <-
      first_class_prob_name(dat, event_level, y_name)
    # plotting
    res <- yardstick::roc_curve(dat, truth = !!sym(y_name), !!prob_name)
    fifty <- res %>%
      dplyr::mutate(delta = abs(0.5 - .threshold)) %>%
      dplyr::arrange(delta) %>%
      dplyr::slice(1)
    ggplot2::autoplot(res) +
      ggplot2::geom_point(
        data = fifty,
        ggplot2::aes(
          x = 1 - specificity,
          y = sensitivity
        )
      )
  }

#' Visualizing the PR curve for a classification model
#'
#' This function plots the full precision recall curve.
#' @inheritParams plot_twoclass_obs_pred
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_twoclass_pr <-
  function(dat, y_name, event_level = "first") {
    prob_name <-
      first_class_prob_name(dat, event_level, y_name)
    # plotting
    res <- yardstick::pr_curve(dat, truth = !!sym(y_name), !!prob_name)
    fifty <- res %>%
      dplyr::mutate(delta = abs(0.5 - .threshold)) %>%
      dplyr::arrange(delta) %>%
      dplyr::slice(1)
    ggplot2::autoplot(res) +
      ggplot2::geom_point(
        data = fifty,
        ggplot2::aes(
          x = 1 - recall,
          y = precision
        )
      )
  }
