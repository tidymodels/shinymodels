library(shinymodels)

theme_set(theme_bw())

data(scat_fda_bt)

explore(scat_fda_bt, hover_cols = c(Site, Taper, Location))

# recordTest("tests/shinytest/multiclass_tuning_hover_cols/")
