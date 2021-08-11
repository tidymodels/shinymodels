#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
## usethis namespace: end
NULL


#' @importFrom tune .get_tune_outcome_names collect_predictions .get_tune_parameter_names
#' @importFrom stats reorder
#' @importFrom scales logit_trans
#' @importFrom broom augment
#' @import yardstick
#' @importFrom scales logit_trans
#' @import shiny
#' @import shinydashboard
#' @import dplyr
#' @import ggplot2
#' @import tidyr
#' @import rlang
#' @import utils
#' @importFrom tidyselect eval_select

# ------------------------------------------------------------------------------

utils::globalVariables(
  c(
    "Class",
    ".color",
    ".config",
    "default_selected",
    "delta",
    ".estimator",
    ".hover",
    ".metric",
    ".outcome",
    ".pred",
    ".pred_class",
    "predicted_class",
    "predicted_probabilities",
    ".residual",
    "std_err",
    ".threshold",
    ":="
  )
)
