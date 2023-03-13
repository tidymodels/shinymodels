# can find the correct first level .pred name

    Code
      first_class_prob_name(preds, "Potato", "Class")
    Error <rlang_error>
      `event_level` must be one of "first" or "second", not "Potato".

---

    Code
      first_class_prob_name(preds, "first", "Potato")
    Error <rlang_error>
      'Potato' is not a column in the dataset

---

    Code
      first_class_prob_name(preds, first, "Class")
    Error <rlang_error>
      `event_level` must be a character vector, not a function.

---

    Code
      first_class_prob_name(preds, "first", Class)
    Error <simpleError>
      object 'Class' not found

