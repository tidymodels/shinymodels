# can accurately organize data

    Code
      organize_data(lin_mod)
    Error <rlang_error>
      No `organize_data()` exists for this type of object.

---

    Code
      organize_data(dplyr::select(cars_bag_vfld, -.predictions))
    Error <rlang_error>
      The `.predictions` column does not exist. Refit with the control argument `save_pred = TRUE` to save predictions.

# can add hover column

    Code
      organize_data(cars_bag_vfld, hover_cols = c("mpg", "mpl"))
    Error <vctrs_error_subscript_oob>
      Can't subset columns that don't exist.
      x Column `mpl` doesn't exist.

