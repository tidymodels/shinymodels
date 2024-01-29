# can find first level

    Code
      first_level(preds, "second", "fact_col")
    Condition
      Error in `first_level()`:
      ! first_level() can only be used for a two-class variable

---

    Code
      first_level(preds, "Potato", "Class")
    Condition
      Error in `first_level()`:
      ! `event_level` must be one of "first" or "second", not "Potato".

---

    Code
      first_level(preds, "first", "Potato")
    Condition
      Error in `first_level()`:
      ! 'Potato' is not a column in the dataset

---

    Code
      first_level(preds, first, "Class")
    Condition
      Error in `first_level()`:
      ! `event_level` must be a character vector, not a function.

---

    Code
      first_level(preds, 1, "Class")
    Condition
      Error in `first_level()`:
      ! `event_level` must be a character vector, not the number 1.

---

    Code
      first_level(preds, "first", Class)
    Condition
      Error:
      ! object 'Class' not found

---

    Code
      first_level(preds, "first", "fact_col")
    Condition
      Error in `first_level()`:
      ! first_level() can only be used for a two-class variable

