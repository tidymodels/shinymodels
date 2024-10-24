# can accurately plot predicted probabilities vs true class plot

    Code
      plot_multiclass_obs_pred(org, org$y_name)
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'select' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

# can accurately plot confusion matrix plot

    Code
      plot_multiclass_conf_mat(org)
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'conf_mat' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

# can accurately plot predicted probabilities vs. a numeric column plot

    Code
      plot_multiclass_pred_numcol(org, org$y_name, "Diameter")
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'select' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

# can accurately plot predicted probabilities vs. a factor column plot

    Code
      plot_multiclass_pred_factorcol(org, org$y_name, "tectonic_settings")
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'select' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

# can accurately plot the ROC curve

    Code
      plot_multiclass_roc(org, org$y_name)
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'roc_curve' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

# can accurately plot the PR curve

    Code
      plot_multiclass_pr(org, org$y_name)
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'pr_curve' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

