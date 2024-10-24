library(testthat)
library(shinymodels)
source(test_path("helper.R"))

test_that("can accurately plot predicted probabilities vs true class plot", {
  skip_on_cran()
  data(scat_fda_bt)

  org <- organize_data(scat_fda_bt)
  org$predictions$.color <- "black"

  expect_snapshot(
    error = TRUE,
    plot_multiclass_obs_pred(org, org$y_name)
  )

  a <- plot_multiclass_obs_pred(org$predictions, org$y_name)
  expect_doppelganger("plot_multiclass_obs_pred", a)
})

test_that("can accurately plot confusion matrix plot", {
  skip_on_cran()
  data(scat_fda_bt)

  org <- organize_data(scat_fda_bt)
  org$predictions$.color <- "black"

  expect_snapshot(
    error = TRUE,
    plot_multiclass_conf_mat(org)
  )
  b <- plot_multiclass_conf_mat(org$predictions)
  expect_doppelganger("plot_multiclass_conf_mat", b)
})

test_that("can accurately plot predicted probabilities vs. a numeric column plot", {
  skip_on_cran()
  data(scat_fda_bt)

  org <- organize_data(scat_fda_bt)
  org$predictions$.color <- "black"

  expect_snapshot(
    error = TRUE,
    plot_multiclass_pred_numcol(org, org$y_name, "Diameter")
  )
  suppressWarnings(
    c <- plot_multiclass_pred_numcol(org$predictions, org$y_name, "Diameter")
  )
  expect_doppelganger("plot_multiclass_pred_numcol", c)
})

test_that("can accurately plot predicted probabilities vs. a factor column plot", {
  skip_on_cran()
  data(scat_fda_bt)

  org <- organize_data(scat_fda_bt)
  org$predictions$.color <- "black"

  expect_snapshot(
    error = TRUE,
    plot_multiclass_pred_factorcol(org, org$y_name, "tectonic_settings")
  )
  suppressWarnings(
    d <- plot_multiclass_pred_factorcol(org$predictions, org$y_name, "Month")
  )
  expect_doppelganger("plot_multiclass_pred_factorcol", d)
})

test_that("can accurately plot the ROC curve", {
  # Remove with yardstick version >1.1.0.9000
  withr::local_options(lifecycle_verbosity = "quiet")

  skip_on_cran()
  data(scat_fda_bt)

  org <- organize_data(scat_fda_bt)
  org$predictions$.color <- "black"

  expect_snapshot(
    error = TRUE,
    plot_multiclass_roc(org, org$y_name)
  )
  e <- plot_multiclass_roc(org$predictions, org$y_name)
  expect_doppelganger("plot_multiclass_roc", e)
})

test_that("can accurately plot the PR curve", {
  # Remove with yardstick version >1.1.0.9000
  withr::local_options(lifecycle_verbosity = "quiet")

  skip_on_cran()
  data(scat_fda_bt)

  org <- organize_data(scat_fda_bt)
  org$predictions$.color <- "black"

  expect_snapshot(
    error = TRUE,
    plot_multiclass_pr(org, org$y_name)
  )
  f <- plot_multiclass_pr(org$predictions, org$y_name)
  expect_doppelganger("plot_multiclass_pr", f)
})
