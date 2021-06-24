library(testthat)
library(shinymodels)
library(tidymodels)
tidymodels_prefer()

data("reg_mtcars_spline_res")
data(mtcars)

set.seed(6735)
folds <- vfold_cv(mtcars, v = 5)

spline_rec <- recipe(mpg ~ ., data = mtcars) %>%
  step_ns(disp) %>%
  step_ns(wt)

lin_mod <- linear_reg() %>%
  set_engine("lm")

control <- control_resamples(save_pred = TRUE)

spline_res <- fit_resamples(lin_mod, spline_rec, folds, control = control)

preds <- collect_predictions(spline_res, summarize = TRUE) %>%
  mutate(.residual = mpg - .pred) %>%
  inner_join(mtcars %>% add_rowindex() %>% select(-mpg), by = ".row")


test_that("can accurately organize data", {
  expect_equal(organize_data(spline_res, mtcars), preds)
  expect_equal(colnames(organize_data(spline_res, mtcars)[2]), "mpg")
  expect_equal(".residual" %in% colnames(organize_data(spline_res, mtcars)), TRUE)
  expect_error(organize_data(lin_mod, mtcars),
               "res_object should be a fit_resamples() object")
  expect_error(organize_data(spline_res, ad_data),
               "original data is mtcars")
})

