library(testthat)
library(shinymodels)

test_that("can display the selected model correctly", {
  skip_on_cran()
  data(ames_mlp_itr)
  org <- organize_data(ames_mlp_itr)
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
    "Selected model: hidden_units = 4, penalty = 0.0000465, epochs = 792"
  )
  expect_equal(
    display_selected(org, performance, preds, tuning_param, input1),
    "Selected model: hidden_units = 2, penalty = 0.00959, epochs = 989"
  )
  expect_equal(
    display_selected(org, preds, performance, tuning_param, input),
    "Selected model: hidden_units = 2, penalty = 0.00959, epochs = 989"
  )
  expect_equal(
    display_selected(org, performance, preds, tuning_param, input2),
    "Selected model: hidden_units = NA, penalty = NA, epochs = NA"
  )
  expect_snapshot(
    error = TRUE,
    display_selected(org, performance, preds, "foo", input)
  )
  expect_snapshot(
    error = TRUE,
    display_selected(org, performance, preds, tuning_param)
  )
  expect_snapshot(
    error = TRUE,
    display_selected(org, performance, tuning_param, input)
  )
})
