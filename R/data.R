#' Tuned flexible discriminant analysis results
#'
#' This object has the results when a flexible discriminant analysis model was
#' tuned over the interaction degree parameters.
#'
#' @details To reduce the object size, five bootstraps were used for resampling
#' and missing data were removed.
#'
#' The code used to produce this object:
#'
#' ```
#'   library(tidymodels)
#'   library(discrim)
#'   tidymodels_prefer()
#'
#'   # ------------------------------------------------------------------------------
#'
#'   ctrl_gr <- control_grid(save_pred = TRUE)
#'
#'   # ------------------------------------------------------------------------------
#'
#'   data(scat)
#'   scat <- scat[complete.cases(scat), ]
#'
#'   # ------------------------------------------------------------------------------
#'
#'   set.seed(1)
#'   scat_rs <- bootstraps(scat, times = 5)
#'
#'   scat_fda_bt <-
#'     discrim_flexible(prod_degree = tune()) %>%
#'     tune_grid(
#'       Species ~ .,
#'       resamples = scat_rs,
#'       control = ctrl_gr
#'     )
#' ```
#'
#' @aliases scat_fda_bt
#' @name scat_fda_bt
#' @docType data
#' @return An object with primary class `tune_results`.
#' @keywords datasets
NULL

#' Resampled bagged tree results
#'
#' This object has the results when a bagged regression tree was resampled using
#' 10-fold cross-validation.
#'
#' @details The code used to produce this object:
#'
#' ```
#'   library(tidymodels)
#'   library(baguette)
#'   tidymodels_prefer()
#'
#'   # ------------------------------------------------------------------------------
#'
#'   ctrl_rs <- control_resamples(save_pred = TRUE)
#'
#'   # ------------------------------------------------------------------------------
#'
#'   set.seed(1)
#'   cars_rs <- vfold_cv(mtcars)
#'
#'   cars_bag_vfld <-
#'     bag_tree() %>%
#'     set_engine("rpart", times = 5) %>%
#'     set_mode("regression") %>%
#'     fit_resamples(
#'       mpg ~ .,
#'       resamples = cars_rs,
#'       control = ctrl_rs
#'     )
#' ```
#'
#' @aliases cars_bag_vfld
#' @name cars_bag_vfld
#' @docType data
#' @return An object with primary class `resample_results`.
#' @keywords datasets
NULL


#' Test set results for logistic regression
#'
#' This object has the results when a logistic regression model is fit to the
#' training set and is evaluated on the test set.
#'
#' @details The code used to produce this object:
#'
#' ```
#'   library(tidymodels)
#'   tidymodels_prefer()
#'
#'   # ------------------------------------------------------------------------------
#'
#'   set.seed(1)
#'   data(two_class_dat)
#'
#'   # ------------------------------------------------------------------------------
#'
#'   two_class_split <- initial_split(two_class_dat)
#'   # ------------------------------------------------------------------------------
#'
#'   glm_spec <- logistic_reg()
#'
#'   two_class_final <-
#'     glm_spec %>%
#'     last_fit(
#'       Class  ~ .,
#'       split = two_class_split
#'     )
#' ```
#'
#' @aliases two_class_final
#' @name two_class_final
#' @docType data
#' @return An object with primary class `last_fit`.
#' @keywords datasets
NULL


#' A CART classification tree tuned via racing
#'
#' This object has the results when a CART classification tree model was
#' tuned over the cost-complexity parameter using racing.
#'
#' @details To reduce the object size, a smaller subset of the data were used.
#'
#' The code used to produce this object:
#'
#' ```
#'   library(tidymodels)
#'   library(finetune)
#'   tidymodels_prefer()
#'
#'   ctrl_rc <- control_race(save_pred = TRUE)
#'
#'   # ------------------------------------------------------------------------------
#'
#'   data(cells)
#'
#'   set.seed(1)
#'   cells <-
#'     cells %>%
#'     select(-case) %>%
#'     sample_n(200)
#'
#'   # ------------------------------------------------------------------------------
#'
#'   set.seed(2)
#'   cell_rs <- vfold_cv(cells)
#'
#'   # ------------------------------------------------------------------------------
#'
#'   set.seed(3)
#'   cell_race <-
#'     decision_tree(cost_complexity = tune()) %>%
#'     set_mode("classification") %>%
#'     tune_race_anova(
#'       class ~ .,
#'       resamples = cell_rs,
#'       grid = tibble(cost_complexity = 10^seq(-2, -1, by = 0.2)),
#'       control = ctrl_rc
#'     )
#' ```
#'
#' @aliases cell_race
#' @name cell_race
#' @docType data
#' @return An object with primary class `tune_race`.
#' @keywords datasets
NULL

#' Iterative optimization of neural network
#'
#' This object has the results when a neural network was tuned using Bayesian
#' optimization and a validation set.
#'
#' @details The code used to produce this object:
#'
#' ```
#'   data(ames)
#'
#'   ames <-
#'     ames %>%
#'     select(Sale_Price, Neighborhood, Longitude, Latitude, Year_Built) %>%
#'     mutate(Sale_Price = log10(ames$Sale_Price))
#'
#'   set.seed(1)
#'   ames_rs <- validation_split(ames)
#'
#'   ames_rec <-
#'     recipe(Sale_Price ~ ., data = ames) %>%
#'     step_dummy(all_nominal_predictors()) %>%
#'     step_zv(all_predictors()) %>%
#'     step_normalize(all_predictors())
#'
#'   mlp_spec <-
#'     mlp(hidden_units = tune(),
#'         penalty = tune(),
#'         epochs = tune()) %>%
#'     set_mode("regression")
#'
#'   set.seed(1)
#'   ames_mlp_itr <-
#'     mlp_spec %>%
#'     tune_bayes(
#'       ames_rec,
#'       resamples = ames_rs,
#'       initial = 5,
#'       iter = 4,
#'       control = control_bayes(save_pred = TRUE)
#'     )
#' ```
#'
#' @aliases ames_mlp_itr
#' @name ames_mlp_itr
#' @docType data
#' @return An object with primary class `iteration_results`.
#' @keywords datasets
NULL
