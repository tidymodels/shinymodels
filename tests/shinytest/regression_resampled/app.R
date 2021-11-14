library(shinymodels)

theme_set(theme_bw())

data(cars_bag_vfld)

explore(cars_bag_vfld, hover_only = TRUE)

# recordTest("tests/shinytest/regression_resampled/")
