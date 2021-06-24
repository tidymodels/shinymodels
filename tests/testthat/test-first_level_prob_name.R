library(testthat)
library(shinymodels)

data("twoclass_ad_data_boost_res")
data(ad_data)

preds <- organize_data(ad_data_boost_res, ad_data)

test_that("can find the correct first level .pred name", {
  expect_equal(first_class_prob_name(preds_dat, "first", "Class"), .pred_Impaired)
  expect_equal(first_class_prob_name(preds_dat, "second", "Class"), .pred_Control)
  expect_error(first_class_prob_name(preds_dat, "Potato", "Class"),
               "object 'prob_name' not found")
  expect_error(first_class_prob_name(preds_dat, "first", "Potato"),
               "object 'Potato' not found")
  expect_error(first_class_prob_name(preds_dat, first, "Class"),
               "event_level should be a string")
  expect_error(first_class_prob_name(preds_dat, "first", Class),
               "y_name should be a string")
})

