library(testthat)
library(shinymodels)

test_that("can find first level", {
  skip_on_cran()
  data("twoclass_ad_data_boost_res")
  data(ad_data, package = "modeldata")

  preds <- organize_data(ad_data_boost_res, ad_data)

  expect_equal(first_level(preds, "first", "Class"), "Impaired")
  expect_equal(first_level(preds, "second", "Class"), "Control")
  expect_error(first_level(preds, "second", "Genotype"),
               "can only be used for a two-class variable")
  expect_error(first_level(preds, "Potato", "Class"),
               '`event_level` must be one of "first" or "second"')
  expect_error(first_level(preds, "first", "Potato"),
               "'Potato' is not a column in the dataset")
  expect_error(first_level(preds, first, "Class"),
               "object 'first' not found")
  expect_error(first_level(preds, 1, "Class"),
               "`event_level` must be a character vector")
  expect_error(first_level(preds, "first", Class),
               "object 'Class' not found")
  expect_error(first_level(preds, "first", "FAS"),
               "can only be used for a two-class variable")
})
