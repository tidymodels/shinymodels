#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL


#' @importFrom tune .get_tune_outcome_names collect_predictions
#' @importFrom stats reorder
#' @importFrom broom augment
#' @import yardstick
#' @import shiny
#' @import dplyr
#' @import ggplot2
#' @import rlang
#' @import utils
#' @importFrom tidyselect eval_select

# ------------------------------------------------------------------------------

utils::globalVariables(
  c(
    ".color",
    ".pred",
    ".pred_class",
    ".residual",
    ".threshold",
    ":=",
    "Class",
    "delta",
    ".hover",
    ".outcome"
  )
)
