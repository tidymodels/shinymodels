library(testthat)
library(shinymodels)
library(tidymodels)
tidymodels_prefer()


test_that("can accurately organize data", {
  skip_on_cran()
  data("reg_mtcars_spline_res")
  data(mtcars)
  data(longley)

  set.seed(6735)
  folds <- vfold_cv(mtcars, v = 5)

  spline_rec <- recipe(mpg ~ ., data = mtcars) %>%
    step_ns(disp) %>%
    step_ns(wt)

  lin_mod <- linear_reg() %>%
    set_engine("lm")

  control <- control_resamples(save_pred = TRUE)
  control_no_pred <- control_resamples(save_pred = FALSE)

  spline_res <- fit_resamples(lin_mod, spline_rec, folds, control = control)
  spline_res_no_pred <- fit_resamples(lin_mod, spline_rec, folds, control = control_no_pred)

  expect_equal(is.list(organize_data(spline_res)), TRUE)
  expect_equal(".pred" %in% names(organize_data(spline_res)$predictions), TRUE)
  expect_equal(".residual" %in% names(organize_data(spline_res)$predictions), TRUE)
  expect_equal(length(organize_data(spline_res)), 2)
  expect_equal(nrow(organize_data(spline_res)$predictions), nrow(mtcars))
  expect_equal(attr(organize_data(spline_res), "y_name"), "mpg")
  expect_equal(attr(organize_data(spline_res), "nrows_preds"), 32)
  expect_equal(".pred" %in% names(organize_data(spline_res)$predictions), TRUE)
  expect_error(organize_data(lin_mod),
               "No `organize_data\\(\\)` exists for this type of object.")
  expect_error(organize_data(spline_res_no_pred),
               paste0(
                 "The `.predictions` column does not exist. ",
                 "Refit with the control argument `save_pred = TRUE` to save predictions."
               ))
})

