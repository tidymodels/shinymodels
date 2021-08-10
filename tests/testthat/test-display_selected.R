library(testthat)
library(shinymodels)

test_that("can display the selected model correctly", {
  skip_on_cran()
  data("tune_bayes_svm_res")
  org <- organize_data(svm_res)
  preds <- org$predictions
  tuning_param <- tune::.get_tune_parameter_names(org$tune_results)
  input <- data.frame(metrics_rows_selected = 1)
  input1 <- data.frame(metrics_rows_selected = 10)
  input2 <- data.frame(metrics_rows_selected = 1000)

  expect_equal(class(display_selected(org, preds, tuning_param, input)),
               "character")
  expect_equal(length(display_selected(org, preds, tuning_param, input)),
               1)
   expect_equal(display_selected(org, preds, tuning_param, input),
               "Selected model: cost = 0.00247, rbf_sigma = 0.00931")
  expect_equal(display_selected(org, preds, tuning_param, input1),
               "Selected model: cost = 26.8, rbf_sigma = 0.876")
  expect_equal(display_selected(org, preds, tuning_param, input2),
             "Selected model: cost = NA, rbf_sigma = NA")
  expect_error(
    display_selected(org, preds, 'foo', input),
    "Column `foo` doesn't exist"
    )
  expect_error(
    display_selected(org, preds, tuning_param),
    'argument "input" is missing, with no default'
  )
  expect_error(
    display_selected(org, tuning_param, input),
    'argument "input" is missing, with no default'
  )
})
