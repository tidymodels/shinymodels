library(testthat)
library(shinymodels)
library(parsnip)

test_that("can accurately organize data", {
  skip_on_cran()
  data(cars_bag_vfld)

  lin_mod <- linear_reg() %>%
    set_engine("lm") %>%
    fit(mpg ~ ., data = mtcars)

  org <- organize_data(cars_bag_vfld, c("mpg", ".pred"))

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
  expect_equal(length(org), 7)
  expect_equal(nrow(org$predictions), 32)
  expect_equal(org$y_name, "mpg")
  expect_equal(is.character(org$default_config), TRUE)
  expect_equal(org$default_config %in% org$predictions$.config, TRUE)
  expect_equal(org$default_config, "Preprocessor1_Model1")
  expect_snapshot(
    error = TRUE,
    organize_data(lin_mod)
  )
  expect_snapshot(
    error = TRUE,
    organize_data(dplyr::select(cars_bag_vfld, -.predictions))
  )
})


test_that("can add hover column", {
  skip_on_cran()
  data(cars_bag_vfld)

  org <- organize_data(cars_bag_vfld, hover_cols = c("mpg", ".pred"))
  org_null <- organize_data(cars_bag_vfld)

  expect_equal(is.character(org$predictions$.hover), TRUE)
  expect_equal(length(org$predictions$.hover), 32)
  expect_equal(org$predictions$.hover[[1]], "mpg: 21.0<br>.pred: 19.9")
  expect_snapshot(
    error = TRUE,
    organize_data(cars_bag_vfld, hover_cols = c("mpg", "mpl"))
  )
  expect_equal(org_null$predictions$.hover[[1]], "mpg: 21.0")
})
