#' Visualizing predicted probability vs. true class for a model
#'
#' This function allows you to plot the predicted probabilities from your tidymodels
#' result against the observed/true class.
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
    our_factor <- sample_predictions[[y_name]]
    our_levels <- levels(our_factor)
    #remind Max to make a function here
    if (event_level == "first") {
      prob_name <- sym(paste(".pred_", our_levels[1]))
    } else {
      prob_name <- sym(paste(".pred_", our_levels[2]))
    }
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


#' Visualizing the confusion matrix for a model
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

#' Visualizing the predicted probability vs. a numeric variable for a model
#'
#' This function allows you to plot the predicted probabilities from your tidymodel
#' result against a numeric variable.
#' @inheritParams plot_twoclass_obs_pred
#' @param numcol give the numerical column you want to plot
#' @keywords models, classes, classif, graphs
#' @export
#' @examples
#' @return
#' plot_twoclass_pred_numcol()
plot_twoclass_pred_numcol <-
  function(object,
           numcol,
           event_level = "first",
           prob_breaks = (2:9) / 10,
           prob_eps = 0.001) {
    col <- enexpr(numcol)
    y_name <- tune::.get_tune_outcome_names(object)
    sample_predictions <- augment(object)
    our_factor <- sample_predictions[[y_name]]
    our_levels <- levels(our_factor)
    #remind Max to make a function here
    if (event_level == "first") {
      prob_name <- sym(paste(".pred_", our_levels[1]))
    } else {
      prob_name <- sym(paste(".pred_", our_levels[2]))
    }
    #plotting
    sample_predictions %>%
      mutate(
        !!prob_name :=
          case_when(
            !!prob_name > 1 - prob_eps ~ 1 - prob_eps,
            !!prob_name  <    prob_eps ~     prob_eps,
            TRUE ~ !!prob_name
          )
      ) %>%
      ggplot(aes(x = col, y = !!prob_name)) +
      geom_point() +
      facet_wrap( ~ Class,
                  labeller = labeller(Class = label_both),
                  ncol = 1) +
      labs(title = "Predicted probabilities versus numeric variable") +
      # We should make a custom transformation that handles probs at 0 and 1
      scale_y_continuous(trans = scales::logit_trans(), breaks = prob_breaks)
  }

#' Visualizing the predicted probability vs. a factor variable for a model
#'
#' This function allows you to plot the predicted probabilities from your model
#' against a factor variable.
#' @inheritParams plot_twoclass_obs_pred
#' @param factorcol give the factor column you want to plot
#' @keywords models, classes, classif, graphs
#' @export
#' @examples
#' @return
#' plot_twoclass_pred_factorcol()
plot_twoclass_pred_factorcol <-
  function(object,
           factorcol,
           event_level = "first",
           prob_breaks = (2:9) / 10,
           prob_eps = 0.001) {
    col <- enexpr(factorcol)
    y_name <- tune::.get_tune_outcome_names(object)
    sample_predictions <- augment(object)
    our_factor <- sample_predictions[[y_name]]
    our_levels <- levels(our_factor)
    #remind Max to make a function here
    if (event_level == "first") {
      prob_name <- sym(paste(".pred_", our_levels[1]))
    } else {
      prob_name <- sym(paste(".pred_", our_levels[2]))
    }
    #plotting
    sample_predictions %>%
      mutate(
        !!prob_name :=
          case_when(
            !!prob_name > 1 - prob_eps ~ 1 - prob_eps,
            !!prob_name  <    prob_eps ~     prob_eps,
            TRUE ~ !!prob_name
          )
      ) %>%
      ggplot(aes(x = col, y = !!prob_name)) +
      geom_point() +
      facet_wrap( ~ Class,
                  labeller = labeller(Class = label_both),
                  ncol = 1) +
      labs(title = "Predicted probabilities versus factor variable") +
      # We should make a custom transformation that handles probs at 0 and 1
      scale_y_continuous(trans = scales::logit_trans(), breaks = prob_breaks)
  }

#' Visualizing the roc curve for a model
#'
#' This function allows you to plot the roc curve.
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
    our_factor <- sample_predictions[[y_name]]
    our_levels <- levels(our_factor)
    #remind Max to make a function here
    if (event_level == "first") {
      prob_name <- sym(paste(".pred_", our_levels[1]))
    } else {
      prob_name <- sym(paste(".pred_", our_levels[2]))
    }
    #plotting
    sample_predictions %>%
      roc_curve(truth = Class,!!prob_name) %>%
      autoplot()
  }

#' Visualizing the pr curve for a model
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
    our_factor <- sample_predictions[[y_name]]
    our_levels <- levels(our_factor)
    #remind Max to make a function here
    if (event_level == "first") {
      prob_name <- sym(paste(".pred_", our_levels[1]))
    } else {
      prob_name <- sym(paste(".pred_", our_levels[2]))
    }
    #plotting
    sample_predictions %>%
      pr_curve(truth = Class,!!prob_name) %>%
      autoplot()
  }

