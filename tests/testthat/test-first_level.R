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
  expect_snapshot(
    error = TRUE,
    first_level(preds, "second", "fact_col")
  )
  expect_snapshot(
    error = TRUE,
    first_level(preds, "Potato", "Class")
  )
  expect_snapshot(
    error = TRUE,
    first_level(preds, "first", "Potato")
  )
  expect_snapshot(
    error = TRUE,
    first_level(preds, first, "Class")
  )
  expect_snapshot(
    error = TRUE,
    first_level(preds, 1, "Class")
  )
  expect_snapshot(
    error = TRUE,
    first_level(preds, "first", Class)
  )
  expect_snapshot(
    error = TRUE,
    first_level(preds, "first", "fact_col")
  )
})
