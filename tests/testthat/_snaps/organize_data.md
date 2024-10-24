# can accurately organize data

    Code
      organize_data(lin_mod)
    Condition
      Error in `organize_data()`:
      ! No `organize_data()` exists for this type of object.

---

    Code
      organize_data(dplyr::select(cars_bag_vfld, -.predictions))
    Condition
      Error in `organize_data()`:
      ! The `.predictions` column does not exist.
      i Refit with the control argument `save_pred = TRUE` to save predictions.

# can add hover column

    Code
      organize_data(cars_bag_vfld, hover_cols = c("mpg", "mpl"))
    Condition
      Error in `organize_data()`:
      ! Can't select columns that don't exist.
      x Column `mpl` doesn't exist.

