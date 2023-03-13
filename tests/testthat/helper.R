make_clean_snapshot <- function(x) {
  # Remove some embedded environments (or rename them) since their formatted
  # names will not be the same from run-to-run.
  x <- x$x
  x$data <- lapply(
    x$data,
    function(x) {
      x$x <- round(x$x, 2)
      x$y <- round(x$y, 2)
      x
    }
  )

  x$layout$xaxis$scaleratio <- 1
  x$layout$xaxis2$scaleratio <- 1
  x$layout$xaxis3$scaleratio <- 1
  x$layout$yaxis$scaleratio <- 1
  x$attrs <- NULL
  x$visdat <- NULL
  x$layoutAttrs <- NULL
  x$cur_data <- "env-name"
  plotly::plotly_json(x, jsonedit = FALSE)
}
