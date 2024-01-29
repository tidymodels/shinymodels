# can accurately plot predicted probabilities vs true class plot

    Code
      plot_twoclass_obs_pred(org, org$y_name)
    Condition
      Error in `first_level()`:
      ! 'class' is not a column in the dataset

---

    Code
      plot_twoclass_obs_pred(org$predictions, y_name)
    Condition
      Error:
      ! object 'y_name' not found

# can accurately plot confusion matrix plot

    Code
      plot_twoclass_conf_mat(org)
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'conf_mat' applied to an object of class "c('two_cls_shiny_data', 'shiny_data')"

# can accurately plot predicted probabilities vs. a numeric column plot

    Code
      plot_twoclass_pred_numcol(org, org$y_name, "AXL")
    Condition
      Error in `first_level()`:
      ! 'class' is not a column in the dataset

---

    Code
      plot_twoclass_pred_numcol(org$predictions, y_name, "AXL")
    Condition
      Error:
      ! object 'y_name' not found

---

    Code
      plot_twoclass_pred_numcol(org$predictions, org$y_name, "potato")
    Condition
      Warning in `ggplot2::geom_point()`:
      Ignoring unknown aesthetics: customdata and text
      Error:
      ! object 'potato' not found

# can accurately plot predicted probabilities vs. a factor column plot

    Code
      plot_twoclass_pred_factorcol(org, org$y_name, "fact_col")
    Condition
      Error in `first_level()`:
      ! 'class' is not a column in the dataset

---

    Code
      plot_twoclass_pred_factorcol(org$predictions, y_name, "fact_col")
    Condition
      Error:
      ! object 'y_name' not found

---

    Code
      plot_twoclass_pred_factorcol(org$predictions, org$y_name, "potato")
    Condition
      Warning in `ggplot2::geom_point()`:
      Ignoring unknown aesthetics: customdata and text
      Error:
      ! object 'potato' not found

# can accurately plot the ROC curve

    Code
      plot_twoclass_roc(org, org$y_name)
    Condition
      Error in `first_level()`:
      ! 'class' is not a column in the dataset

---

    Code
      plot_twoclass_roc(org$predictions, y_name)
    Condition
      Error:
      ! object 'y_name' not found

# can accurately plot the PR curve

    Code
      plot_twoclass_pr(org, org$y_name)
    Condition
      Error in `first_level()`:
      ! 'class' is not a column in the dataset

---

    Code
      plot_twoclass_pr(org$predictions, y_name)
    Condition
      Error:
      ! object 'y_name' not found

---

    Code
      plot_twoclass_pr(org$predictions, "mpg")
    Condition
      Error in `first_level()`:
      ! 'mpg' is not a column in the dataset

