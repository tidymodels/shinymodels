# can find the correct first level .pred name

    Code
      first_class_prob_name(preds, "Potato", "Class")
    Condition
      Error in `first_level()`:
      ! `event_level` must be one of "first" or "second", not "Potato".

---

    Code
      first_class_prob_name(preds, "first", "Potato")
    Condition
      Error in `first_level()`:
      ! Potato is not a column in the dataset.

---

    Code
      first_class_prob_name(preds, first, "Class")
    Condition
      Error in `first_level()`:
      ! `event_level` must be a character vector, not a function.

