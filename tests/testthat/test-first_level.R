library(testthat)
library(shinymodels)

data("twoclass_ad_data_boost_res")
data(ad_data)

preds <- organize_data(ad_data_boost_res, ad_data)

test_that("can find first level", {
  expect_equal(first_level(preds, "first", "Class"), "Impaired")
  expect_equal(first_level(preds, "second", "Class"), "Control")
  expect_error(first_level(preds, "Potato", "Class"),
               "argument event_level should be 'first' or 'second'")
  expect_error(first_level(preds, "first", "Potato"),
               "'Potato' is not a column in the data")
  expect_error(first_level(preds, first, "Class"),
               "event_level should be a string")
  expect_error(first_level(preds, "first", Class),
               "y_name should be a string")
  expect_error
  #if .our_factor is not a factor, write an error message
  #for three level, only used on two level
})
