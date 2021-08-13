
<!-- README.md is generated from README.Rmd. Please edit that file -->

# shinymodels

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/shinymodels)](https://CRAN.R-project.org/package=shinymodels)
[![Codecov test
coverage](https://codecov.io/gh/adhikars11/shinymodels/branch/main/graph/badge.svg)](https://codecov.io/gh/adhikars11/shinymodels?branch=main)
[![R-CMD-check](https://github.com/adhikars11/shinymodels/workflows/R-CMD-check/badge.svg)](https://github.com/adhikars11/shinymodels/actions)
<!-- badges: end -->

The goal of shinymodels is to launch a Shiny app given a {tidymodels} object.
The main goal is to make it easier to explore {tidymodels} results. 

## Installation

You can install the released version of shinymodels from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("shinymodels")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("adhikars11/shinymodels")
```

## Example

This is a basic example which shows you how to use shinymodels:

Step 1: Load {shinymodels}.
``` r
library(shinymodels)
#> Registered S3 method overwritten by 'tune':
#>   method                   from   
#>   required_pkgs.model_spec parsnip
## basic example code
```

Step 2: Create a `tune_` object using various tune functions like `fit_resamples()` or `tune_bayes()`.
``` r
library(tidymodels)
tidymodels_prefer()
library(doMC)
registerDoMC(cores = 8)

set.seed(6735)
folds <- vfold_cv(mtcars, v = 5)

car_rec <-
  recipe(mpg ~ ., data = mtcars) %>%
  step_normalize(all_predictors())

svm_mod <-
  svm_rbf(cost = tune(), rbf_sigma = tune()) %>%
  set_engine("kernlab") %>%
  set_mode("regression")

# Use a space-filling design with 7 points
set.seed(3254)
svm_res <- tune_bayes(svm_mod, car_rec, resamples = folds, initial = 7, iter = 3,
                     control = control_bayes(save_pred = TRUE, verbose = TRUE))
svm_res
```

Step 3: Apply the launcher function `explore()` on the `tune_` object to launch a shiny app with the plots related to the model. 
``` r
explore(svm_res)
```
You should see a shiny app that looks like this:

<img src="man/welcome.png" width="100%" />

Step 4: Use the shiny app to diagnose the model and quickly detect and rectify the any outliers or problematic observations. 
