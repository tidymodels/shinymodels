library(testthat)
library(shinymodels)
library(tidymodels)
tidymodels_prefer()


test_that("can accurately organize data", {
  skip_on_cran()
  data("reg_mtcars_spline_res")

  lin_mod <- linear_reg() %>%
    set_engine("lm") %>%
    fit(mpg ~ ., data = mtcars)

  expect_equal(is.list(organize_data(mtcars_spline_res)), TRUE)
  expect_equal(".pred" %in% names(organize_data(mtcars_spline_res)$predictions), TRUE)
  expect_equal(".residual" %in% names(organize_data(mtcars_spline_res)$predictions), TRUE)
  expect_equal(length(organize_data(mtcars_spline_res)), 2)
  expect_equal(nrow(organize_data(mtcars_spline_res)$predictions), nrow(mtcars))
  expect_equal(organize_data(mtcars_spline_res)$y_name, "mpg")
  expect_equal(nrow(organize_data(mtcars_spline_res)$predictions), 32)
  expect_equal(".pred" %in% names(organize_data(mtcars_spline_res)$predictions), TRUE)
  expect_error(
    organize_data(lin_mod),
    "No `organize_data\\(\\)` exists for this type of object."
  )
  expect_error(
    organize_data(dplyr::select(mtcars_spline_res, -.predictions)),
    paste0(
      "The `.predictions` column does not exist. ",
      "Refit with the control argument `save_pred = TRUE` to save predictions."
    )
  )
})



test_that("can add hover column", {
  skip_on_cran()
  data("reg_mtcars_spline_res")

  lin_mod <- linear_reg() %>%
    set_engine("lm") %>%
    fit(mpg ~ ., data = mtcars)
  org <- organize_data(mtcars_spline_res, c("mpg", ".pred"))
  org_null <- organize_data(mtcars_spline_res)
  expect_equal(is.character(org$predictions$.hover), TRUE)
  expect_equal(length(org$predictions$.hover), 32)
  expect_equal(org$predictions$.hover[[1]], "mpg: 21.0<br>.pred: 20.98")
  expect_error(organize_data(mtcars_spline_res, c("mpg", "mpl")),
               "Column `mpl` doesn't exist.")
  expect_equal(org_null$predictions$.hover[[1]], "mpg: 21.0")
})
