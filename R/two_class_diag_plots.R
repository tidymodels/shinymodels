#' Visualizing predicted probability vs. true class for a two-class classification
#' model
#'
#' This function allows you to plot the predicted probabilities from your tidymodels
#' result for a two-class classification model against the observed/true class.
#' @param object The object you got using [tune::fit_resamples()].
#' @param event_level The desired event level for the dataset.
#' @param prob_bins The desired `binwidth` for histogram.
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_twoclass_obs_pred <-
  function(object,
           event_level = "first",
           prob_bins = 0.025) {
    y_name <- tune::.get_tune_outcome_names(object)
    sample_predictions <- broom::augment(object)
    prob_name <-
      first_class_prob_name(sample_predictions, event_level, y_name)
    #plotting
    sample_predictions %>%
      ggplot2::ggplot(ggplot2::aes(x = !!prob_name)) +
      ggplot2::geom_histogram(binwidth = prob_bins, col = "white") +
      ggplot2::facet_wrap(~ Class,
                 labeller = ggplot2::labeller(Class = ggplot2::label_both),
                 ncol = 1) +
      ggplot2::labs(title = "Predicted probabilities versus true class") +
      ggplot2::lims(x = 0:1)
  }

#' Visualizing the confusion matrix for a classification model
#'
#' This function allows you to plot the confusion matrix for your classification
#' model.
#' @inheritParams plot_twoclass_obs_pred
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_twoclass_conf_mat <- function(object) {
  y_name <- tune::.get_tune_outcome_names(object)
  sample_predictions <- broom::augment(object)
  #plotting
  sample_predictions %>%
    yardstick::conf_mat(truth = Class, estimate = .pred_class) %>%
    ggplot2::autoplot()
}

#' Visualizing the predicted probability vs. a numeric variable for a classification
#' model
#'
#' This function allows you to plot the predicted probabilities from your tidymodels
#' result for a two-class classification model against a numeric variable.
#' @inheritParams plot_twoclass_obs_pred
#' @param dat The data frame that has the original data and the results of
#' [tune::collect_predictions()].
#' @param y_name The y/response variable for the model.
#' @param numcol The numerical column you want to plot.
#' @param prob_breaks The breaks for [ggplot2::scale_y_continuous()].
#' @param prob_eps The threshold to break prob_name.
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_twoclass_pred_numcol <-
  function(dat,
           numcol,
           y_name,
           event_level = "first",
           prob_breaks = (2:9) / 10,
           prob_eps = 0.001) {
    prob_name <- first_class_prob_name(dat, event_level, y_name)
    #plotting
    dat %>%
      dplyr::mutate(
        !!prob_name :=
          dplyr::case_when(
            !!prob_name > 1 - prob_eps ~ 1 - prob_eps,
            !!prob_name  <    prob_eps ~     prob_eps,
            TRUE ~ !!prob_name
          )
      )
    p <- ggplot2::ggplot(dat, ggplot2::aes(x = !!rlang::sym(numcol), y = !!prob_name)) +
      ggplot2::geom_point(ggplot2::aes(customdata = .row, color = .color)) +
      ggplot2::facet_wrap( ~ Class,
                  labeller = ggplot2::labeller(Class = ggplot2::label_both),
                  ncol = 1) +
      ggplot2::scale_color_identity() +
      ggplot2::labs(title = "Predicted probabilities versus numeric variable") +
      # # We should make a custom transformation that handles probs at 0 and 1
      # scale_y_continuous(trans = scales::logit_trans(), breaks = prob_breaks) +
      ggplot2::theme(legend.position = "none")
    plotly::ggplotly(p) %>%
      plotly::layout(dragmode = "select")
  }

#' Visualizing the predicted probability vs. a factor variable for a classification
#' model
#'
#' This function allows you to plot the predicted probabilities from your
#' tidymodels result for a two-class classification model against a factor variable.
#' @inheritParams plot_twoclass_obs_pred
#' @inheritParams plot_twoclass_pred_numcol
#' @param factorcol The factor column you want to plot.
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_twoclass_pred_factorcol <-
  function(dat,
           factorcol,
           y_name,
           event_level = "first",
           prob_breaks = (2:9) / 10,
           prob_eps = 0.001) {
    prob_name <- first_class_prob_name(dat, event_level, y_name)
    #plotting
    dat %>%
      dplyr::mutate(
        !!prob_name :=
          dplyr::case_when(
            !!prob_name > 1 - prob_eps ~ 1 - prob_eps,
            !!prob_name  <    prob_eps ~     prob_eps,
            TRUE ~ !!prob_name
          )
      )
    p <- ggplot2::ggplot(dat, ggplot2::aes(x = !!prob_name, y = !!rlang::sym(factorcol))) +
      ggplot2::geom_point(ggplot2::aes(customdata = .row, color = .color)) +
      ggplot2::facet_wrap( ~ Class,
                  labeller = ggplot2::labeller(Class = ggplot2::label_both),
                  ncol = 1) +
      ggplot2::scale_color_identity() +
      ggplot2::labs(title = "Predicted probabilities versus factor variable",
           y = factorcol) +
      # # We should make a custom transformation that handles probs at 0 and 1
      # scale_y_continuous(trans = scales::logit_trans(), breaks = prob_breaks) +
      ggplot2::theme(legend.position = "none")
    plotly::ggplotly(p) %>%
      plotly::layout(dragmode = "select")
  }

#' Visualizing the ROC curve for a classification model
#'
#' This function allows you to plot the ROC curve for your classification model.
#' @inheritParams plot_twoclass_obs_pred
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_twoclass_roc <-
  function(object, event_level = "first") {
    y_name <- tune::.get_tune_outcome_names(object)
    sample_predictions <- broom::augment(object)
    prob_name <-
      first_class_prob_name(sample_predictions, event_level, y_name)
    #plotting
    res <- yardstick::roc_curve(truth = Class, !!prob_name)
    fifty <- res %>%
      dplyr::mutate(delta = abs(0.5 - .threshold)) %>%
      dplyr::arrange(delta) %>%
      dplyr::slice(1)
    ggplot2::autoplot(res) +
      ggplot2::geom_point(data = fifty, ggplot2::aes(x = 1 - yardstick::specificity, y =  yardstick::sensitivity))
  }

#' Visualizing the PR curve for a classification model
#'
#' This function allows you to plot the full precision recall curve.
#' @inheritParams plot_twoclass_obs_pred
#' @keywords models, classes, classif, graphs
#' @export
#' @return
#' A [ggplot2::ggplot()] object.
plot_twoclass_pr <-
  function(object, event_level = "first") {
    y_name <- tune::.get_tune_outcome_names(object)
    sample_predictions <- broom::augment(object)
    prob_name <-
      first_class_prob_name(sample_predictions, event_level, y_name)
    #plotting
    res <- yardstick::pr_curve(truth = Class, !!prob_name)
    fifty <- res %>%
      dplyr::mutate(delta = abs(0.5 - .threshold)) %>%
      dplyr::arrange(delta) %>%
      dplyr::slice(1)
    ggplot2::autoplot(res) +
      ggplot2::geom_point(data = fifty, ggplot2::aes(x = 1 - yardstick::specificity, y =  yardstick::sensitivity))
  }
