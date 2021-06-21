#' Visualizing predicted probability vs. true class for a two-class classification
#' model
#'
#' This function allows you to plot the predicted probabilities from your tidymodels
#' result for a two-class classification model against the observed/true class.
#' @param object give the object you got using tidymodels::fit_resamples
#' @keywords models, classes, classif, graphs
#' @export
#' @examples
#' @return
#' plot_twoclass_obs_pred()
plot_twoclass_obs_pred <-
  function(object,
           event_level = "first",
           prob_bins = 0.025) {
    y_name <- tune::.get_tune_outcome_names(object)
    sample_predictions <- augment(object)
    prob_name <-
      first_class_prob_name(sample_predictions, event_level, y_name)
    #plotting
    sample_predictions %>%
      ggplot(aes(x = !!prob_name)) +
      geom_histogram(binwidth = prob_bins, col = "white") +
      facet_wrap(~ Class,
                 labeller = labeller(Class = label_both),
                 ncol = 1) +
      labs(title = "Predicted probabilities versus true class") +
      lims(x = 0:1)
  }

#' Visualizing the confusion matrix for a classification model
#'
#' This function allows you to plot the confusion matrix for your classification
#' model
#' @inheritParams plot_twoclass_obs_pred
#' @keywords models, classes, classif, graphs
#' @export
#' @examples
#' @return
#' plot_twoclass_obs_pred()
plot_twoclass_conf_mat <- function(object) {
  y_name <- tune::.get_tune_outcome_names(object)
  sample_predictions <- augment(object)
  #plotting
  sample_predictions %>%
    conf_mat(truth = Class, estimate = .pred_class) %>%
    autoplot()
}

#' Visualizing the predicted probability vs. a numeric variable for a classification
#' model
#'
#' This function allows you to plot the predicted probabilities from your tidymodel
#' result for a two-class classification model against a numeric variable.
#' @param dat give the dataframe obtained by merging the results from tuning functions
#' with the original data
#' @param y_name give the y/response variable for the model
#' @param numcol give the numerical column you want to plot
#' @keywords models, classes, classif, graphs
#' @export
#' @examples
#' @return
#' plot_twoclass_pred_numcol()
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
      mutate(
        !!prob_name :=
          case_when(
            !!prob_name > 1 - prob_eps ~ 1 - prob_eps,
            !!prob_name  <    prob_eps ~     prob_eps,
            TRUE ~ !!prob_name
          )
      )
    p <- ggplot(dat, aes(x = !!sym(numcol), y = !!prob_name)) +
      geom_point(aes(customdata = .row, color = .color)) +
      facet_wrap( ~ Class,
                  labeller = labeller(Class = label_both),
                  ncol = 1) +
      scale_color_identity() +
      labs(title = "Predicted probabilities versus numeric variable") +
      theme_bw() +
      # # We should make a custom transformation that handles probs at 0 and 1
      scale_y_continuous(trans = scales::logit_trans(), breaks = prob_breaks) +
      theme(legend.position = "none")
    ggplotly(p) %>%
      plotly::layout(dragmode = "select")
  }

#' Visualizing the predicted probability vs. a factor variable for a classification
#' model
#'
#' This function allows you to plot the predicted probabilities from your
#' tidymodels result for a two-class classification model against a factor variable.
#' @inheritParams plot_twoclass_pred_numcol
#' @param factorcol give the factor column you want to plot
#' @keywords models, classes, classif, graphs
#' @export
#' @examples
#' @return
#' plot_twoclass_pred_factorcol()
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
      mutate(
        !!prob_name :=
          case_when(
            !!prob_name > 1 - prob_eps ~ 1 - prob_eps,
            !!prob_name  <    prob_eps ~     prob_eps,
            TRUE ~ !!prob_name
          )
      )
    p <- ggplot(dat, aes(x = !!prob_name, y = !!sym(factorcol))) +
      geom_point(aes(customdata = .row, color = .color)) +
      facet_wrap( ~ Class,
                  labeller = labeller(Class = label_both),
                  ncol = 1) +
      scale_color_identity() +
      labs(title = "Predicted probabilities versus factor variable",
           y = factorcol) +
      theme_bw() +
      # # We should make a custom transformation that handles probs at 0 and 1
      # scale_y_continuous(trans = scales::logit_trans(), breaks = prob_breaks) +
      theme(legend.position = "none")
    ggplotly(p) %>%
      plotly::layout(dragmode = "select")
  }

#' Visualizing the roc curve for a classification model
#'
#' This function allows you to plot the roc curve for your classification model.
#' @inheritParams plot_twoclass_obs_pred
#' @keywords models, classes, classif, graphs
#' @export
#' @examples
#' @return
#' plot_twoclass_roc()
plot_twoclass_roc <-
  function(object, event_level = "first") {
    y_name <- tune::.get_tune_outcome_names(object)
    sample_predictions <- augment(object)
    prob_name <-
      first_class_prob_name(sample_predictions, event_level, y_name)
    #plotting
    res <- roc_curve(truth = Class, !!prob_name)
    fifty <- res %>%
      mutate(delta = abs(0.5 - .threshold)) %>%
      arrange(delta) %>%
      slice(1)
    autoplot(res) +
      geom_point(data = fifty, aes(x = 1 - specificity, y =  sensitivity))
  }

#' Visualizing the pr curve for a classification model
#'
#' This function allows you to plot the full precision recall curve.
#' @inheritParams plot_twoclass_obs_pred
#' @keywords models, classes, classif, graphs
#' @export
#' @examples
#' @return
#' plot_twoclass_pr()
plot_twoclass_pr <-
  function(object, event_level = "first") {
    y_name <- tune::.get_tune_outcome_names(object)
    sample_predictions <- augment(object)
    prob_name <-
      first_class_prob_name(sample_predictions, event_level, y_name)
    #plotting
    res <- pr_curve(truth = Class, !!prob_name)
    fifty <- res %>%
      mutate(delta = abs(0.5 - .threshold)) %>%
      arrange(delta) %>%
      slice(1)
    autoplot(res) +
      geom_point(data = fifty, aes(x = 1 - specificity, y =  sensitivity))
  }
