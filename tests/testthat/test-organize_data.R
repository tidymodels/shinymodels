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

  org <- organize_data(mtcars_spline_res, c("mpg", ".pred"))

  expect_equal(is.list(org), TRUE)
  expect_equal(".outcome" %in% names(org$predictions), TRUE)
  expect_equal(".pred" %in% names(org$predictions), TRUE)
  expect_equal(".residual" %in% names(org$predictions), TRUE)
  expect_equal(is.character(org$num_cols), TRUE)
  expect_equal(is.character(org$fac_cols), TRUE)
  expect_equal(org$fac_cols, character(0))
  expect_equal(sum(length(org$num_cols), length(org$fac_cols)), length(colnames(mtcars)))
  expect_equal("mpg" %in% org$num_cols, TRUE)
  expect_equal(org$app_type, "reg")
  expect_equal(length(org), 6)
  expect_equal(nrow(org$predictions), 32)
  expect_equal(org$y_name, "mpg")
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

  org <- organize_data(mtcars_spline_res, hover_cols = c("mpg", ".pred"))
  org_null <- organize_data(mtcars_spline_res)

  expect_equal(is.character(org$predictions$.hover), TRUE)
  expect_equal(length(org$predictions$.hover), 32)
  expect_equal(org$predictions$.hover[[1]], "mpg: 21.0<br>.pred: 20.98")
  expect_error(
    organize_data(mtcars_spline_res, hover_cols = c("mpg", "mpl")),
    "Column `mpl` doesn't exist."
  )
  expect_equal(org_null$predictions$.hover[[1]], "mpg: 21.0")
})
