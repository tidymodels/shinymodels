library(testthat)
library(shinymodels)

test_that("can find first level", {
  skip_on_cran()
  data(two_class_final)
  data(two_class_dat, package = "modeldata")

  org <- organize_data(two_class_final)

  set.seed(1)
  preds <-
    org$predictions %>%
    mutate(
      fact_col = sample(letters[1:3], nrow(org$predictions), replace = TRUE),
      fact_col = factor(fact_col)
    )

  expect_equal(first_level(preds, "first", "Class"), "Class1")
  expect_equal(first_level(preds, "second", "Class"), "Class2")
  expect_error(
    first_level(preds, "second", "fact_col"),
    "can only be used for a two-class variable"
  )
  expect_error(
    first_level(preds, "Potato", "Class"),
    '`event_level` must be one of "first" or "second"'
  )
  expect_error(
    first_level(preds, "first", "Potato"),
    "'Potato' is not a column in the dataset"
  )
  expect_error(
    first_level(preds, first, "Class"),
    "`event_level` must be a character vector."
  )
  expect_error(
    first_level(preds, 1, "Class"),
    "`event_level` must be a character vector"
  )
  expect_error(
    first_level(preds, "first", Class),
    "object 'Class' not found"
  )
  expect_error(
    first_level(preds, "first", "fact_col"),
    "can only be used for a two-class variable"
  )
})
