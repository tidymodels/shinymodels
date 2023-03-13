# can find first level

    Code
      first_level(preds, "second", "fact_col")
    Error <rlang_error>
      first_level() can only be used for a two-class variable

---

    Code
      first_level(preds, "Potato", "Class")
    Error <rlang_error>
      `event_level` must be one of "first" or "second", not "Potato".

---

    Code
      first_level(preds, "first", "Potato")
    Error <rlang_error>
      'Potato' is not a column in the dataset

---

    Code
      first_level(preds, first, "Class")
    Error <rlang_error>
      `event_level` must be a character vector, not a function.

---

    Code
      first_level(preds, 1, "Class")
    Error <rlang_error>
      `event_level` must be a character vector, not a number.

---

    Code
      first_level(preds, "first", Class)
    Error <simpleError>
      object 'Class' not found

---

    Code
      first_level(preds, "first", "fact_col")
    Error <rlang_error>
      first_level() can only be used for a two-class variable

