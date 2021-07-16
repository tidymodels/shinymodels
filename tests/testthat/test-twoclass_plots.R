library(testthat)
library(shinymodels)

test_that("can accurately plot numeric observed vs. predicted plot", {
  skip_on_cran()
  data("twoclass_ad_data_boost_res")

  org <- organize_data(ad_data_boost_res)
  org$predictions$.color <- "black"
  expect_error(
    plot_twoclass_obs_pred(org, org$y_name),
    "`data` must be a data frame, or other object coercible by `fortify()`,
    not an S3 object with class reg_shiny_data/shiny_data"
  )
  expect_error(
    plot_twoclass_obs_pred(org$predictions, y_name),
    "object 'y_name' not found"
  )
  #TODO no error here, again we don't need y_name as an argument
  # expect_error(
  #   plot_twoclass_obs_pred(org$predictions, "Class"),
  #   "object 'y_name' not found"
  # )
  a <- plot_twoclass_obs_pred(org$predictions, org$y_name)
  expect_snapshot(plotly::plotly_json(a, jsonedit=FALSE))
})

test_that("can accurately plot confusion matrix plot", {
  skip_on_cran()
  data("twoclass_ad_data_boost_res")

  org <- organize_data(ad_data_boost_res)
  org$predictions$.color <- "black"

  expect_error(
    plot_twoclass_conf_mat(org),
    "no applicable method for 'conf_mat' applied to an object of class
    'c('two_cls_shiny_data', 'shiny_data')' "
  )
  b <- plot_twoclass_conf_mat(org$predictions)
  expect_snapshot(plotly::plotly_json(b, jsonedit=FALSE))
})

test_that("can accurately plot predicted probabilities vs. a numeric column plot", {
  skip_on_cran()
  data("twoclass_ad_data_boost_res")

  org <- organize_data(ad_data_boost_res)
  org$predictions$.color <- "black"

  expect_error(
    plot_twoclass_pred_numcol(org, org$y_name, "AXL"),
    "'Class' is not a column in the dataset"
  )
  expect_error(
    plot_twoclass_pred_numcol(org$predictions, y_name, "AXL"),
    "object 'y_name' not found"
  )
  expect_error(
    plot_twoclass_pred_numcol(org$predictions, org$y_name, "cyl"),
    "object 'cyl' not found"
  )
  #TODO why is it not throwing an error when a factorcol is provided
  # expect_error(
  #   plot_twoclass_pred_numcol(org$predictions, org$y_name, "Genotype"),
  #   "object 'cyl' not found"
  # )

  c <- plot_twoclass_pred_numcol(org$predictions, org$y_name,"AXL")
  expect_snapshot(plotly::plotly_json(c, jsonedit=FALSE))
})

test_that("can accurately plot predicted probabilities vs. a factor column plot", {
  skip_on_cran()
  data("twoclass_ad_data_boost_res")

  org <- organize_data(ad_data_boost_res)
  org$predictions$.color <- "black"

  expect_error(
    plot_twoclass_pred_numcol(org, org$y_name, "Genotype"),
    "'Class' is not a column in the dataset"
  )
  expect_error(
    plot_twoclass_pred_numcol(org$predictions, y_name, "Genotype"),
    "object 'y_name' not found"
  )
  expect_error(
    plot_twoclass_pred_numcol(org$predictions, org$y_name, "cyl"),
    "object 'cyl' not found"
  )
  #TODO why is it not throwing an error when a numcol is provided
  # expect_error(
  #   plot_twoclass_pred_numcol(org$predictions, org$y_name, "AXL"),
  #   "object 'cyl' not found"
  # )

  d <- plot_twoclass_pred_numcol(org$predictions, org$y_name,"AXL")
  expect_snapshot(plotly::plotly_json(d, jsonedit=FALSE))
})

test_that("can accurately plot the ROC curve", {
  skip_on_cran()
  data("twoclass_ad_data_boost_res")

  org <- organize_data(ad_data_boost_res)
  org$predictions$.color <- "black"

  expect_error(
    plot_twoclass_roc(org, org$y_name),
    "'Class' is not a column in the dataset"
  )
  expect_error(
    plot_twoclass_roc(org$predictions, y_name),
    "object 'y_name' not found"
  )
  e <- plot_twoclass_roc(org$predictions, org$y_name,"AXL")
  expect_snapshot(plotly::plotly_json(e, jsonedit=FALSE))
})

test_that("can accurately plot the PR curve", {
  skip_on_cran()
  data("twoclass_ad_data_boost_res")

  org <- organize_data(ad_data_boost_res)
  org$predictions$.color <- "black"

  expect_error(
    plot_twoclass_pr(org, org$y_name),
    "'Class' is not a column in the dataset"
  )
  expect_error(
    plot_twoclass_pr(org$predictions, y_name),
    "object 'y_name' not found"
  )
  expect_error(
    plot_twoclass_pr(org$predictions, "mpg"),
    "'mpg' is not a column in the dataset"
  )
  f <- plot_twoclass_pr(org$predictions, org$y_name,"AXL")
  expect_snapshot(plotly::plotly_json(f, jsonedit=FALSE))
})
