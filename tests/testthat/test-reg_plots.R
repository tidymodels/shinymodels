library(testthat)
library(shinymodels)
source(test_path("helper.R"))

test_that("can accurately plot numeric observed vs. predicted plot", {
  skip_on_cran()
  data("reg_mtcars_spline_res")

  org <- organize_data(mtcars_spline_res)
  org$predictions$.color <- "black"
  expect_error(
    plot_numeric_obs_pred(org, org$y_name),
    "`data` must be a data frame, or other object coercible by `fortify\\(\\)`, not an S3 object with class reg_shiny_data/shiny_data"
  )
  expect_warning(
    expect_error(
      plot_numeric_obs_pred(org$predictions, y_name),
      "object 'y_name' not found"
    ),
    "Ignoring unknown aesthetics"
  )
  expect_warning(
    a <- plot_numeric_obs_pred(org$predictions, org$y_name),
    "Ignoring unknown aesthetics"
  )
  expect_snapshot_output(make_clean_snapshot(a))
})

test_that("can accurately plot numeric residuals vs. predicted plot", {
  skip_on_cran()
  data("reg_mtcars_spline_res")

  org <- organize_data(mtcars_spline_res)
  org$predictions$.color <- "black"

  expect_error(
    plot_numeric_obs_pred(org, org$y_name),
    "`data` must be a data frame, or other object coercible by `fortify\\(\\)`, not an S3 object with class reg_shiny_data/shiny_data"
  )
  expect_warning(
    b <- plot_numeric_res_pred(org$predictions, org$y_name),
    "Ignoring unknown aesthetics"
  )
  expect_snapshot_output(make_clean_snapshot(b))
})

test_that("can accurately plot numeric residuals vs. a numeric column plot", {
  skip_on_cran()
  data("reg_mtcars_spline_res")

  org <- organize_data(mtcars_spline_res)
  org$predictions$.color <- "black"

  expect_error(
    plot_numeric_obs_pred(org, org$y_name),
    "`data` must be a data frame, or other object coercible by `fortify\\(\\)`, not an S3 object with class reg_shiny_data/shiny_data"
  )
  expect_warning(
    expect_error(
      plot_numeric_res_numcol(org$predictions, "mpg", "Class"),
      "object 'Class' not found"
    ),
    "Ignoring unknown aesthetics"
  )
  expect_warning(
    c <- plot_numeric_res_numcol(org$predictions, org$y_name,"hp"),
    "Ignoring unknown aesthetics"
  )
  expect_snapshot_output(make_clean_snapshot(c))
})

test_that("can accurately plot numeric residuals vs. a factor column plot", {
  skip_on_cran()
  data("reg_ames_rf_res")

  org <- organize_data(ames_rf_res)
  org$predictions$.color <- "black"

  expect_error(
    plot_numeric_obs_pred(org, org$y_name),
    "`data` must be a data frame, or other object coercible by `fortify\\(\\)`, not an S3 object with class reg_shiny_data/shiny_data"
  )
  expect_warning(
    expect_error(
      plot_numeric_res_factorcol(org$predictions, org$y_name, "St"),
      "object 'St' not found"
    ),
    "Ignoring unknown aesthetics"
  )
  expect_warning(
    d <- plot_numeric_res_factorcol(org$predictions, org$y_name, "Street"),
    "Ignoring unknown aesthetics",
  )
  expect_snapshot_output(make_clean_snapshot(d))
})
