library(testthat)
library(shinymodels)

test_that("can accurately plot numeric observed vs. predicted plot", {
  skip_on_cran()
  data("reg_mtcars_spline_res")

  org <- organize_data(mtcars_spline_res)
  org$predictions$.color <- "black"
  expect_error(
    plot_numeric_obs_pred(org, org$y_name),
    "'data' must be a data frame, or other object coercible by `fortify()`,
    not an S3 object with class reg_shiny_data/shiny_data"
  )
  expect_error(
    plot_numeric_obs_pred(org$predictions, y_name),
    "object 'y_name' not found"
  )
  #TODO no error here, again we don't need y_name as an argument
  # expect_error(
  #   plot_numeric_obs_pred(org$predictions, "Class"),
  #   "object 'y_name' not found"
  # )
  a <- plot_numeric_obs_pred(org$predictions, org$y_name)
  expect_snapshot(plotly::plotly_json(a, jsonedit=FALSE))
})

test_that("can accurately plot numeric residuals vs. predicted plot", {
  skip_on_cran()
  data("reg_mtcars_spline_res")

  org <- organize_data(mtcars_spline_res)
  org$predictions$.color <- "black"

  expect_error(
    plot_numeric_res_pred(org, org$y_name),
    "`data` must be a data frame, or other object coercible by `fortify()`,
    not an S3 object with class reg_shiny_data/shiny_data"
  )
  expect_error(
    plot_numeric_res_pred(org$predictions, y_name),
    "object 'y_name' not found"
  )
  #TODO no error here, again we don't need y_name as an argument
  # expect_error(
  #   plot_numeric_res_pred(org$predictions, "Class"),
  #   "object 'y_name' not found"
  # )

  b <- plot_numeric_res_pred(org$predictions, org$y_name)
  expect_snapshot(plotly::plotly_json(b, jsonedit=FALSE))
})

test_that("can accurately plot numeric residuals vs. a numeric column plot", {
  skip_on_cran()
  data("reg_mtcars_spline_res")

  org <- organize_data(mtcars_spline_res)
  org$predictions$.color <- "black"

  expect_error(
    plot_numeric_res_numcol(org, org$y_name, "cyl"),
    "`data` must be a data frame, or other object coercible by `fortify()`,
    not an S3 object with class reg_shiny_data/shiny_data"
  )
  #TODO no error here, again we don't need y_name as an argument
  # expect_error(
  #   plot_numeric_res_numcol(org$predictions, y_name, "cyl"),
  #   "object 'y_name' not found"
  # )
  expect_error(
    plot_numeric_res_numcol(org$predictions, "mpg", "Class"),
    "object 'Class' not found"
  )

  c <- plot_numeric_res_numcol(org$predictions, org$y_name,"hp")
  expect_snapshot(plotly::plotly_json(c, jsonedit=FALSE))
})

test_that("can accurately plot numeric residuals vs. a factor column plot", {
  skip_on_cran()
  data("reg_ames_rf_res")

  org <- organize_data(ames_rf_res)
  org$predictions$.color <- "black"

  expect_error(
    plot_numeric_res_factorcol(org, org$y_name, "Street"),
    "`data` must be a data frame, or other object coercible by `fortify()`,
    not an S3 object with class reg_shiny_data/shiny_data"
  )
  #TODO no error here, again we don't need y_name as an argument?
  # expect_error(
  #   plot_numeric_res_factorcol(org$predictions, y_name, "Street"),
  #   "object 'y_name' not found"
  # )
  expect_error(
    plot_numeric_res_factorcol(org$predictions, org$y_name, "Street"),
    "object 'St' not found"
  )

  d <- plot_numeric_res_factorcol(org$predictions, org$y_name, "Street")
  expect_snapshot(plotly::plotly_json(d, jsonedit=FALSE))
})
