library(testthat)
library(shinymodels)
source(test_path("helper.R"))

test_that("can accurately plot predicted probabilities vs true class plot", {
  skip_on_cran()
  data(scat_fda_bt)

  org <- organize_data(scat_fda_bt)
  org$predictions$.color <- "black"
  expect_error(
    plot_multiclass_obs_pred(org, org$y_name),
    "no applicable method for 'select' applied to an object"
  )
  a <- plot_multiclass_obs_pred(org$predictions, org$y_name)
  expect_snapshot_output(make_clean_snapshot(a))
})

test_that("can accurately plot confusion matrix plot", {
  skip_on_cran()
  data(scat_fda_bt)

  org <- organize_data(scat_fda_bt)
  org$predictions$.color <- "black"

  expect_error(
    plot_multiclass_conf_mat(org),
    "no applicable method for 'conf_mat' applied to an object of class"
  )
  b <- plot_multiclass_conf_mat(org$predictions)
  expect_snapshot_output(make_clean_snapshot(b))
})

test_that("can accurately plot predicted probabilities vs. a numeric column plot", {
  skip_on_cran()
  data(scat_fda_bt)

  org <- organize_data(scat_fda_bt)
  org$predictions$.color <- "black"

  expect_error(
    plot_multiclass_pred_numcol(org, org$y_name, "Diameter"),
    "no applicable method for 'select' applied to an object of class"
  )
  expect_error(
    plot_multiclass_pred_numcol(org$predictions, y_name),
    'argument "numcol" is missing, with no default'
  )
  expect_warning(
    expect_error(
      plot_multiclass_pred_numcol(org$predictions, org$y_name, "AXL"),
      "object 'AXL' not found"
    ),
    "Ignoring unknown aesthetics"
  )
  expect_warning(
    c <- plot_multiclass_pred_numcol(org$predictions, org$y_name, "Diameter"),
    "Ignoring unknown aesthetics"
  )
  expect_snapshot_output(make_clean_snapshot(c))
})

test_that("can accurately plot predicted probabilities vs. a factor column plot", {
  skip_on_cran()
  data(scat_fda_bt)

  org <- organize_data(scat_fda_bt)
  org$predictions$.color <- "black"

  expect_error(
    plot_multiclass_pred_factorcol(org, org$y_name, "tectonic_settings"),
    "no applicable method for 'select' applied to an object of class "
  )
  expect_error(
    plot_multiclass_pred_factorcol(org$predictions, y_name),
    'argument "factorcol" is missing, with no default'
  )
  expect_warning(
    expect_error(
      plot_multiclass_pred_factorcol(org$predictions, org$y_name, "Genotype"),
      "object 'Genotype' not found"
    ),
    "Ignoring unknown aesthetics"
  )
  expect_warning(
    d <- plot_multiclass_pred_factorcol(org$predictions, org$y_name, "Month"),
    "Ignoring unknown aesthetics"
  )
  expect_snapshot_output(make_clean_snapshot(d))
})

test_that("can accurately plot the ROC curve", {
  skip_on_cran()
  data(scat_fda_bt)

  org <- organize_data(scat_fda_bt)
  org$predictions$.color <- "black"

  expect_error(
    plot_multiclass_roc(org, org$y_name),
    "no applicable method for 'roc_curve' applied to an object of class"
  )
  expect_error(
    plot_multiclass_roc(),
    'argument "dat" is missing, with no default'
  )
  e <- plot_multiclass_roc(org$predictions, org$y_name)
  expect_snapshot_output(make_clean_snapshot(e))
})

test_that("can accurately plot the PR curve", {
  skip_on_cran()
  data(scat_fda_bt)

  org <- organize_data(scat_fda_bt)
  org$predictions$.color <- "black"

  expect_error(
    plot_multiclass_pr(org, org$y_name),
    "no applicable method for 'pr_curve' applied to an object of class"
  )
  expect_error(
    plot_multiclass_pr(),
    'argument "dat" is missing, with no default'
  )
  f <- plot_multiclass_pr(org$predictions, org$y_name)
  expect_snapshot_output(make_clean_snapshot(f))
})
