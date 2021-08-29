
<!-- README.md is generated from README.Rmd. Please edit that file -->

# shinymodels

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/shinymodels)](https://CRAN.R-project.org/package=shinymodels)
[![Codecov test
coverage](https://codecov.io/gh/tidymodels/shinymodels/branch/main/graph/badge.svg)](https://codecov.io/gh/tidymodels/shinymodels?branch=main)
[![R-CMD-check](https://github.com/tidymodels/shinymodels/workflows/R-CMD-check/badge.svg)](https://github.com/tidymodels/shinymodels/actions)
<!-- badges: end -->

The goal of shinymodels is to launch a Shiny app given tidymodels’
tuning or resampling results. The main goal is to make it easier to
explore tidymodels results.

## Installation

~~You can install the released version of shinymodels from
[CRAN](https://CRAN.R-project.org) with:~~

``` r
install.packages("shinymodels") ## not yet
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("tidymodels/shinymodels")
```

## Example

Start by tuning or fitting to resampling folds, using tune functions
like `fit_resamples()` or `tune_bayes()`.

``` r
library(shinymodels)
#> Loading required package: ggplot2
#> Registered S3 method overwritten by 'tune':
#>   method                   from   
#>   required_pkgs.model_spec parsnip
library(tidymodels)
#> ── Attaching packages ────────────────────────────────────── tidymodels 0.1.3 ──
#> ✓ broom        0.7.9      ✓ rsample      0.1.0 
#> ✓ dials        0.0.9      ✓ tibble       3.1.3 
#> ✓ dplyr        1.0.7      ✓ tidyr        1.1.3 
#> ✓ infer        1.0.0      ✓ tune         0.1.6 
#> ✓ modeldata    0.1.1      ✓ workflows    0.2.3 
#> ✓ parsnip      0.1.7      ✓ workflowsets 0.1.0 
#> ✓ purrr        0.3.4      ✓ yardstick    0.0.8 
#> ✓ recipes      0.1.16
#> ── Conflicts ───────────────────────────────────────── tidymodels_conflicts() ──
#> x purrr::discard() masks scales::discard()
#> x dplyr::filter()  masks stats::filter()
#> x dplyr::lag()     masks stats::lag()
#> x recipes::step()  masks stats::step()
#> • Use tidymodels_prefer() to resolve common conflicts.
tidymodels_prefer()
library(doMC)
#> Loading required package: foreach
#> 
#> Attaching package: 'foreach'
#> The following objects are masked from 'package:purrr':
#> 
#>     accumulate, when
#> Loading required package: iterators
#> Loading required package: parallel
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
#> 
#> >  Generating a set of 7 initial parameter results
#> ✓ Initialization complete
#> 
#> Optimizing rmse using the expected improvement
#> 
#> ── Iteration 1 ─────────────────────────────────────────────────────────────────
#> 
#> i Current best:      rmse=3.91 (@iter 0)
#> i Gaussian process model
#> ✓ Gaussian process model
#> i Generating 5000 candidates
#> i Predicted candidates
#> i cost=4.01, rbf_sigma=0.134
#> i Estimating performance
#> ✓ Estimating performance
#> ♥ Newest results:    rmse=2.841 (+/-0.353)
#> 
#> ── Iteration 2 ─────────────────────────────────────────────────────────────────
#> 
#> i Current best:      rmse=2.841 (@iter 1)
#> i Gaussian process model
#> ✓ Gaussian process model
#> i Generating 5000 candidates
#> i Predicted candidates
#> i cost=26.8, rbf_sigma=0.876
#> i Estimating performance
#> ✓ Estimating performance
#> ⓧ Newest results:    rmse=3.371 (+/-0.693)
#> 
#> ── Iteration 3 ─────────────────────────────────────────────────────────────────
#> 
#> i Current best:      rmse=2.841 (@iter 1)
#> i Gaussian process model
#> ✓ Gaussian process model
#> i Generating 5000 candidates
#> i Predicted candidates
#> i cost=3.91, rbf_sigma=0.929
#> i Estimating performance
#> ✓ Estimating performance
#> ⓧ Newest results:    rmse=3.393 (+/-0.697)
svm_res
#> # Tuning results
#> # 5-fold cross-validation 
#> # A tibble: 20 × 6
#>    splits         id    .metrics          .notes           .predictions    .iter
#>    <list>         <chr> <list>            <list>           <list>          <int>
#>  1 <split [25/7]> Fold1 <tibble [14 × 6]> <tibble [0 × 1]> <tibble [49 × …     0
#>  2 <split [25/7]> Fold2 <tibble [14 × 6]> <tibble [0 × 1]> <tibble [49 × …     0
#>  3 <split [26/6]> Fold3 <tibble [14 × 6]> <tibble [0 × 1]> <tibble [42 × …     0
#>  4 <split [26/6]> Fold4 <tibble [14 × 6]> <tibble [0 × 1]> <tibble [42 × …     0
#>  5 <split [26/6]> Fold5 <tibble [14 × 6]> <tibble [0 × 1]> <tibble [42 × …     0
#>  6 <split [25/7]> Fold1 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [7 × 6…     1
#>  7 <split [25/7]> Fold2 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [7 × 6…     1
#>  8 <split [26/6]> Fold3 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [6 × 6…     1
#>  9 <split [26/6]> Fold4 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [6 × 6…     1
#> 10 <split [26/6]> Fold5 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [6 × 6…     1
#> 11 <split [25/7]> Fold1 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [7 × 6…     2
#> 12 <split [25/7]> Fold2 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [7 × 6…     2
#> 13 <split [26/6]> Fold3 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [6 × 6…     2
#> 14 <split [26/6]> Fold4 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [6 × 6…     2
#> 15 <split [26/6]> Fold5 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [6 × 6…     2
#> 16 <split [25/7]> Fold1 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [7 × 6…     3
#> 17 <split [25/7]> Fold2 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [7 × 6…     3
#> 18 <split [26/6]> Fold3 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [6 × 6…     3
#> 19 <split [26/6]> Fold4 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [6 × 6…     3
#> 20 <split [26/6]> Fold5 <tibble [2 × 6]>  <tibble [0 × 1]> <tibble [6 × 6…     3
```

Apply the launcher function `explore()` on the `tune_` object to launch
a Shiny app with the plots related to the model.

``` r
explore(svm_res)
```

You should see a Shiny app that looks like this:

![](https://media.giphy.com/media/MJQBGHVZmGzFiMqWMs/giphy.gif)

Use the Shiny app to explore the model and detect any outliers or
problematic observations.

## Contributing

This project is released with a [Contributor Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

-   For questions and discussions about tidymodels packages, modeling,
    and machine learning, please [post on RStudio
    Community](https://community.rstudio.com/new-topic?category_id=15&tags=tidymodels,question).

-   If you think you have encountered a bug, please [submit an
    issue](https://github.com/tidymodels/shinymodels/issues).

-   Either way, learn how to create and share a
    [reprex](https://reprex.tidyverse.org/articles/articles/learn-reprex.html)
    (a minimal, reproducible example), to clearly communicate about your
    code.

-   Check out further details on [contributing guidelines for tidymodels
    packages](https://www.tidymodels.org/contribute/) and [how to get
    help](https://www.tidymodels.org/help/).
