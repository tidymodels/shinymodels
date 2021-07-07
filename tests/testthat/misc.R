library(testthat)
library(shinymodels)

test_that("can format hover correctly", {
  expect_equal(length(format_hover(mtcars)), 32)
  expect_equal(is.character(format_hover(mtcars)), TRUE)
  expect_error(format_hover(),
               'argument "x" is missing, with no default')

})
