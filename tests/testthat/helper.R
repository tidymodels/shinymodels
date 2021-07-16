make_clean_snapshot <- function(x) {
  # Remove some embedded environments (or rename them) since their fomatted
  # names will not be the same from run-to-run.
  x <- x$x
  x$attrs <- NULL
  x$visdat <- NULL
  x$layoutAttrs <- NULL
  x$cur_data <- "env-name"
  plotly::plotly_json(x, jsonedit = FALSE)
}
