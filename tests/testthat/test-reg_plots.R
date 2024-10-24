library(testthat)
library(shinymodels)
source(test_path("helper.R"))

test_that("can accurately plot numeric observed vs. predicted plot", {
  skip_on_cran()
  data(ames_mlp_itr)

  org <- organize_data(ames_mlp_itr)
  org$predictions$.color <- "black"
  org$predictions$.alpha <- 1

  expect_snapshot(
    error = TRUE,
    plot_numeric_obs_pred(org, org$y_name)
  )
  suppressWarnings(
    expect_snapshot_error(
      plot_numeric_obs_pred(org$predictions, y_name)
    )
  )
  suppressWarnings(
    a <- plot_numeric_obs_pred(org$predictions, org$y_name)
  )
  expect_doppelganger("plot_numeric_obs_pred", a)
})

test_that("can accurately plot numeric residuals vs. predicted plot", {
  skip_on_cran()
  data(ames_mlp_itr)

  org <- organize_data(ames_mlp_itr)
  org$predictions$.color <- "black"
  org$predictions$.alpha <- 1

  expect_snapshot(
    error = TRUE,
    plot_numeric_obs_pred(org, org$y_name)
  )
  suppressWarnings(
    b <- plot_numeric_res_pred(org$predictions, org$y_name)
  )
  expect_doppelganger("plot_numeric_res_pred", b)
})

test_that("can accurately plot numeric residuals vs. a numeric column plot", {
  skip_on_cran()
  data(ames_mlp_itr)

  org <- organize_data(ames_mlp_itr)
  org$predictions$.color <- "black"
  org$predictions$.alpha <- 1

  expect_snapshot(
    error = TRUE,
    plot_numeric_obs_pred(org, org$y_name)
  )
  suppressWarnings(
    expect_snapshot_error(
      plot_numeric_res_numcol(org$predictions, "Sale_Price", "Class")
    )
  )
  suppressWarnings(
    c <- plot_numeric_res_numcol(org$predictions, org$y_name, "Longitude")
  )
  expect_doppelganger("plot_numeric_res_numcol", c)
})

test_that("can accurately plot numeric residuals vs. a factor column plot", {
  skip_on_cran()
  data(ames_mlp_itr)

  org <- organize_data(ames_mlp_itr)
  org$predictions$.color <- "black"
  org$predictions$.alpha <- 1

  expect_snapshot(
    error = TRUE,
    plot_numeric_obs_pred(org, org$y_name)
  )
  suppressWarnings(
    expect_snapshot_error(
      plot_numeric_res_factorcol(org$predictions, org$y_name, "St")
    )
  )
  suppressWarnings(
    d <- plot_numeric_res_factorcol(org$predictions, org$y_name, "Neighborhood")
  )
  expect_doppelganger("plot_numeric_res_factorcol", d)
})
