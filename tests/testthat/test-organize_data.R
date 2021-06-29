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

  spline_res <- fit_resamples(lin_mod, spline_rec, folds, control = control)

  preds <- tune::collect_predictions(spline_res, summarize = TRUE) %>%
    mutate(.residual = mpg - .pred) %>%
    inner_join(mtcars %>% add_rowindex() %>% select(-mpg), by = ".row")

  expect_equal(organize_data(spline_res, mtcars), preds)
  expect_equal(colnames(organize_data(spline_res, mtcars)[2]), "mpg")
  expect_equal(".residual" %in% colnames(organize_data(spline_res, mtcars)), TRUE)
  expect_error(organize_data(lin_mod, mtcars),
               "No `collect_predictions\\(\\)` exists for this type of object")
  expect_error(organize_data(spline_res, as.data.frame(longley)),
               "'mpg' is not a column in the orignal data")
})

