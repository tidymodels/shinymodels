skip_if_not_installed("modeldata")

library(testthat)
library(shinymodels)


test_that("can find the correct first level .pred name", {
  skip_on_cran()
  data(two_class_final)
  data(two_class_dat, package = "modeldata")

  org <- organize_data(two_class_final)
  preds <- org$predictions

  expect_equal(first_class_prob_name(preds, "first", "Class"), quote(.pred_Class1))
  expect_equal(first_class_prob_name(preds, "second", "Class"), quote(.pred_Class2))
  expect_snapshot(
    error = TRUE,
    first_class_prob_name(preds, "Potato", "Class")
  )
  expect_snapshot(
    error = TRUE,
    first_class_prob_name(preds, "first", "Potato")
  )
  expect_snapshot(
    error = TRUE,
    first_class_prob_name(preds, first, "Class")
  )
})
