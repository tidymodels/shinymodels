# can accurately plot numeric observed vs. predicted plot

    Code
      plot_numeric_obs_pred(org, org$y_name)
    Condition
      Error in `fortify()`:
      ! `data` must be a <data.frame>, or an object coercible by `fortify()`, not a <reg_shiny_data/shiny_data> object.

---

    Code
      plot_numeric_obs_pred(org$predictions, y_name)
    Condition
      Warning in `ggplot2::geom_point()`:
      Ignoring unknown aesthetics: customdata and text
      Error:
      ! object 'y_name' not found

# can accurately plot numeric residuals vs. predicted plot

    Code
      plot_numeric_obs_pred(org, org$y_name)
    Condition
      Error in `fortify()`:
      ! `data` must be a <data.frame>, or an object coercible by `fortify()`, not a <reg_shiny_data/shiny_data> object.

# can accurately plot numeric residuals vs. a numeric column plot

    Code
      plot_numeric_obs_pred(org, org$y_name)
    Condition
      Error in `fortify()`:
      ! `data` must be a <data.frame>, or an object coercible by `fortify()`, not a <reg_shiny_data/shiny_data> object.

---

    Code
      plot_numeric_res_numcol(org$predictions, "Sale_Price", "Class")
    Condition
      Warning in `ggplot2::geom_point()`:
      Ignoring unknown aesthetics: customdata and text
      Error:
      ! object 'Class' not found

# can accurately plot numeric residuals vs. a factor column plot

    Code
      plot_numeric_obs_pred(org, org$y_name)
    Condition
      Error in `fortify()`:
      ! `data` must be a <data.frame>, or an object coercible by `fortify()`, not a <reg_shiny_data/shiny_data> object.

---

    Code
      plot_numeric_res_factorcol(org$predictions, org$y_name, "St")
    Condition
      Warning in `ggplot2::geom_point()`:
      Ignoring unknown aesthetics: customdata and text
      Error:
      ! object 'St' not found

