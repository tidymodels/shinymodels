# can display the selected model correctly

    Code
      display_selected(org, performance, preds, "foo", input)
    Error <vctrs_error_subscript_oob>
      Can't subset columns that don't exist.
      x Column `foo` doesn't exist.

---

    Code
      display_selected(org, performance, preds, tuning_param)
    Error <simpleError>
      argument "input" is missing, with no default

---

    Code
      display_selected(org, performance, tuning_param, input)
    Error <simpleError>
      argument "input" is missing, with no default

