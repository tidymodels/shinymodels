#' Plot tuning parameters
#'
#' This function plots the tuning parameters against the metrics measured
#' during tuning.
#' @param obj An object with class `tune_results`.
#' @param ... Other options to pass to [tune::autoplot.tune_results()].
#' @details The ggplot object is modified to have an aesthetic of
#' `customdata = .config`.
#' @export
#' @return
#' A [plotly::ggplotly()] object.
plot_tuning_params <- function(obj, ...) {
  p <- modified_autoplot(obj, ...)
  plotly::ggplotly(p)
}

# ------------------------------------------------------------------------------

# We want to be able to know what .config value was selected in the shiny app.
# This adjusts any geom_point() aesthetic mapping to include a new aesthetic
# `customdata = .config`.

modified_autoplot <- function(object, ...) {
  p <- autoplot(object, type = "marginals", ...)
  p$layers <- purrr::map(p$layers, maybe_modify_mapping)
  p
}

maybe_modify_mapping <- function(x) {
  has_mapping <- any(names(x) == "mapping")
  is_point <- is_geom_point(x)
  is_null <- identical(x$mapping, NULL)
  if (has_mapping & is_point & !is_null) {
    x$mapping <- utils::modifyList(x$mapping, ggplot2::aes(customdata = .config))
  }
  x
}

is_geom_point <- function(x) {
  if (any(names(x) == "geom")) {
    res <- inherits(x$geom, "GeomPoint")
  } else {
    res <- FALSE
  }
  res
}

