library(testthat)
library(shinymodels)

test_that("can display the selected model correctly", {
  skip_on_cran()
  data("tune_bayes_svm_res")
  org <- organize_data(svm_res)
  preds <- org$predictions
  performance <-
    org$tune_results %>%
    tune::collect_metrics() %>%
    dplyr::relocate(metric = .metric, estimate = mean) %>%
    dplyr::select(-.estimator, -n, -std_err)
  tuning_param <- tune::.get_tune_parameter_names(org$tune_results)
  input <- data.frame(metrics_rows_selected = 1)
  input1 <- data.frame(metrics_rows_selected = 10)
  input2 <- data.frame(metrics_rows_selected = 1000)

  expect_equal(
    class(display_selected(org, performance, preds, tuning_param, input)),
    "character"
  )
  expect_equal(
    length(display_selected(org, performance, preds, tuning_param, input)),
    1
  )
  expect_equal(
    display_selected(org, performance, preds, tuning_param, input),
    "Selected model: cost = 23.2, rbf_sigma = 0.000000684"
  )
  expect_equal(
    display_selected(org, performance, preds, tuning_param, input1),
    "Selected model: cost = 0.00247, rbf_sigma = 0.00931"
  )
  expect_equal(
    display_selected(org, preds, performance, tuning_param, input),
    "Selected model: cost = 0.00247, rbf_sigma = 0.00931"
  )
  expect_equal(
    display_selected(org, performance, preds, tuning_param, input2),
    "Selected model: cost = NA, rbf_sigma = NA"
  )
  expect_error(
    display_selected(org, performance, preds, "foo", input),
    "Column `foo` doesn't exist"
  )
  expect_error(
    display_selected(org, performance, preds, tuning_param),
    'argument "input" is missing, with no default'
  )
  expect_error(
    display_selected(org, performance, tuning_param, input),
    'argument "input" is missing, with no default'
  )
})
