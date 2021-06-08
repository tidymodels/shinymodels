#' Predicted probability vs. true class function
#'
#' This function allows you to plot the predicted probabilities from your model
#' against the observed/true class.
#' @param x give the object you got using tidymodels::fit_resamples
#' @keywords predicted probabilities, true class
#' @export
#' @examples
#' plot_twoclass_obs_pred()
plot_twoclass_obs_pred <-
  function(x, event_level = "first") {
    prob_bins <- 0.025
    y_name <- tune::.get_tune_outcome_names(x)
    #If the levels are A and B, if you know the names of the levels, you can use !!()
    sample_predictions <- augment(x)
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
      ggtitle("Predicted probabilities versus true class") +
      xlim(0:1)
  }


#' Confusion matrix function
#'
#' This function allows you to plot the confusion matrix for your classification
#' model
#' @param x give the object you got using tidymodels::fit_resamples
#' @keywords confusion matrix
#' @export
#' @examples
#' plot_twoclass_obs_pred()
plot_twoclass_conf_mat <- function(x) {
  y_name <- tune::.get_tune_outcome_names(x)
  sample_predictions <- augment(x)
  #plotting
  sample_predictions %>%
    conf_mat(truth = Class, estimate = .pred_class) %>%
    autoplot()
}

#' Predicted probability vs. numeric variable function
#'
#' This function allows you to plot the predicted probabilities from your model
#' against a numeric variable.
#' @param x give the object you got using tidymodels::fit_resamples
#' @param col give the numerical column you want to plot
#' @keywords predicted probabilities, numeric variable
#' @export
#' @examples
#' plot_twoclass_pred_numcol()
plot_twoclass_pred_numcol <-
  function(x, col, event_level = "first") {
    col <- enexpr(col)
    prob_breaks <- (2:9) / 10
    prob_eps <- 0.001
    y_name <- tune::.get_tune_outcome_names(x)
    sample_predictions <- augment(x)
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
      ggtitle("Predicted probabilities versus numeric variable") +
      # We should make a custom transformation that handles probs at 0 and 1
      scale_y_continuous(trans = scales::logit_trans(), breaks = prob_breaks)
  }

#' Predicted probability vs. factor variable function
#'
#' This function allows you to plot the predicted probabilities from your model
#' against a factor variable.
#' @param x give the object you got using tidymodels::fit_resamples
#' @param col give the factor column you want to plot
#' @keywords predicted probabilities, factor variable
#' @export
#' @examples
#' plot_twoclass_pred_faccol()
plot_twoclass_pred_faccol <-
  function(x, col, event_level = "first") {
    prob_breaks <- (2:9) / 10
    prob_eps <- 0.001
    y_name <- tune::.get_tune_outcome_names(x)
    sample_predictions <- augment(x)
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
            !!prob_name > 1 - prob_eps ~ 1 - prob_eps,!!prob_name  <    prob_eps ~     prob_eps,
            TRUE ~ !!prob_name
          )
      ) %>%
      ggplot(aes(x = col, y = !!prob_name)) +
      geom_point() +
      facet_wrap(~ Class,
                 labeller = labeller(Class = label_both),
                 ncol = 1) +
      ggtitle("Predicted probabilities versus factor variable") +
      # We should make a custom transformation that handles probs at 0 and 1
      scale_y_continuous(trans = scales::logit_trans(), breaks = prob_breaks)
  }

#' roc curve function
#'
#' This function allows you to plot the roc curve.
#' @param x give the object you got using tidymodels::fit_resamples
#' @keywords roc curve
#' @export
#' @examples
#' plot_twoclass_roc()
plot_twoclass_roc <-
  function(x, event_level = "first") {
    y_name <- tune::.get_tune_outcome_names(x)
    sample_predictions <- augment(x)
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

#' pr curve function
#'
#' This function allows you to plot the full precision recall curve.
#' @param x give the object you got using tidymodels::fit_resamples
#' @keywords pr curve
#' @export
#' @examples
#' plot_twoclass_pr()
plot_twoclass_pr <-
  function(x, event_level = "first") {
    y_name <- tune::.get_tune_outcome_names(x)
    sample_predictions <- augment(x)
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

