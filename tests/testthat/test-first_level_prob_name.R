library(testthat)
library(shinymodels)


test_that("can find the correct first level .pred name", {
  skip_on_cran()
  data("twoclass_ad_data_boost_res")
  data(ad_data, package = "modeldata")

  preds <- organize_data(ad_data_boost_res, ad_data)

  expect_equal(first_class_prob_name(preds, "first", "Class"), quote(.pred_Impaired))
  expect_equal(first_class_prob_name(preds, "second", "Class"), quote(.pred_Control))
  expect_error(first_class_prob_name(preds, "Potato", "Class"),
               '`event_level` must be one of "first" or "second"')
  expect_error(first_class_prob_name(preds, "first", "Potato"),
               "'Potato' is not a column in the dataset")
  expect_error(first_class_prob_name(preds, first, "Class"),
               "object 'first' not found")
  expect_error(first_class_prob_name(preds, "first", Class),
               "object 'Class' not found")
})
