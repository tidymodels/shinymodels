# can display the selected model correctly

    Code
      display_selected(org, performance, preds, "foo", input)
    Condition
      Error in `predictions[predictions$.config == sel_config, tuning_param]`:
      ! Can't subset columns that don't exist.
      x Column `foo` doesn't exist.

---

    Code
      display_selected(org, performance, preds, tuning_param)
    Condition
      Error in `display_selected()`:
      ! argument "input" is missing, with no default

---

    Code
      display_selected(org, performance, tuning_param, input)
    Condition
      Error in `display_selected()`:
      ! argument "input" is missing, with no default

