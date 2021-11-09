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
  expect_error(
    first_class_prob_name(preds, "Potato", "Class"),
    '`event_level` must be one of "first" or "second"'
  )
  expect_error(
    first_class_prob_name(preds, "first", "Potato"),
    "'Potato' is not a column in the dataset"
  )
  expect_error(
    first_class_prob_name(preds, first, "Class"),
    "`event_level` must be a character vector"
  )
  expect_error(
    first_class_prob_name(preds, "first", Class),
    "object 'Class' not found"
  )
})
