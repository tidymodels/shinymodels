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

---

    Code
      plot_multiclass_pred_numcol(org$predictions, y_name)
    Condition
      Error:
      ! argument "numcol" is missing, with no default

---

    Code
      plot_multiclass_pred_numcol(org$predictions, org$y_name, "AXL")
    Condition
      Warning in `ggplot2::geom_point()`:
      Ignoring unknown aesthetics: customdata and text
      Error:
      ! object 'AXL' not found

# can accurately plot predicted probabilities vs. a factor column plot

    Code
      plot_multiclass_pred_factorcol(org, org$y_name, "tectonic_settings")
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'select' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

---

    Code
      plot_multiclass_pred_factorcol(org$predictions, y_name)
    Condition
      Error:
      ! argument "factorcol" is missing, with no default

---

    Code
      plot_multiclass_pred_factorcol(org$predictions, org$y_name, "Genotype")
    Condition
      Warning in `ggplot2::geom_point()`:
      Ignoring unknown aesthetics: customdata and text
      Error:
      ! object 'Genotype' not found

# can accurately plot the ROC curve

    Code
      plot_multiclass_roc(org, org$y_name)
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'roc_curve' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

---

    Code
      plot_multiclass_roc()
    Condition
      Error in `plot_multiclass_roc()`:
      ! argument "dat" is missing, with no default

# can accurately plot the PR curve

    Code
      plot_multiclass_pr(org, org$y_name)
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'pr_curve' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

---

    Code
      plot_multiclass_pr()
    Condition
      Error in `plot_multiclass_pr()`:
      ! argument "dat" is missing, with no default

