#' @importFrom generics explore
#' @export
generics::explore

#' Interactive model results
#'
#' @description
#'
#' `explore()` launches shiny application to interact with results from some
#' tidymodels functions.
#'
#' To investigate model fit(s), `explore()` can be used on objects produced by
#'
#' * [tune::fit_resamples()]
#' * [tune::tune_grid()]
#' * [tune::tune_bayes()]
#' * [finetune::tune_sim_anneal()]
#' * [tune::last_fit()]
#'
#' The application starts in a new window and allows users to look at how
#' predicted values align with the true, observed data. There are 2-3 tabs in
#' the application (depending on the object):
#'
#' * **Tuning Parameters** enables users to choose a specific set of tuning
#' parameters. These results are shown in the **Plots** tab. The default
#' configuration is based on the _optimal value_ of the first performance
#' metric used during the creation of the object.
#'
#' * **Plots** shows various panels that can visualize how well the model fits.
#' Specific points can be colored by clicking on them (as long as the
#' `hover_only = FALSE` option was used). To reset the colored points,
#' double on the graph background.
#'
#' * **About** gives information on the application as well as links to get
#' help or file bug reports/feature requests.
#'
#' To quit the shiny application, use the `Esc` key.
#'
#' @details
#' For resampling methods that produce more than one hold-out prediction per
#' row (e.g. the bootstrap, repeated V-fold cross-validation), the predicted
#' values shown in the plots are averages of the predictions for that specific
#' row.
#'
#' The ggplot theme used in the shiny application corresponds to the current
#' theme in the R session. Run [ggplot2::theme_set()] to change the theme for
#' the plots in the shiny application.
#'
#' For classification models, there is a shiny controller on the bottom left of
#' the application that toggles between "Unscaled (i.e. linear)" and
#' "Logit scaled" probability scaling. The first options plots the raw
#' probabilities while the logit scaling uses [scales::logit_trans()] to rescale
#' the axis. This can be helpful when a model with a linear predictor is used
#' (e.g. logistic or multinomial regression) since it can show linear effects of
#' a column more easily.
#'
#' When using the application, there may be warnings printed in the console
#' about "event tied a source ID ... not registered". These can be ignored.
#'
#'
#' @export
#' @rdname explore
explore.default <- function(x, ...) {
  rlang::abort("No `explore()` exists for this type of object.")
}

#' @export
#' @inheritParams shiny_models
#' @param x An object with class `tune_results`.
#' @rdname explore
explore.tune_results <-
  function(x,
           hover_cols = NULL,
           hover_only = FALSE,
           ...) {
    dat <- organize_data(x, hover_cols = {{ hover_cols }}, ...)
    shiny_models(dat, hover_only = hover_only)
  }
