#'  Internal function to run shiny application on an object of `shiny_data` class
#'
#' This function takes the [organize_data()] result to shiny_models a Shiny app.
#' @param x The [organize_data()] result.
#' @param hover_cols The columns to display while hovering in the Shiny app.
#' @param hover_only A Boolean to turn on and off hovering in the interactive
#' plots
#' @param ... Other parameters not currently used.
#' @export
#' @keywords internal

shiny_models <- function(x, hover_cols = NULL, hover_only = NULL, ...) {
  UseMethod("shiny_models")
}

#' @export
#' @rdname shiny_models
shiny_models.default <- function(x, hover_cols = NULL, hover_only = NULL, ...) {
  rlang::abort("No `shiny_models()` exists for this type of object.")
}


#' @export
#' @rdname shiny_models
shiny_models.reg_shiny_data <-
  function(x, hover_cols = NULL, hover_only = NULL, ...) {
    preds <- x$predictions
    ui <- shiny::fluidPage(
      plotly::plotlyOutput("obs_vs_pred"),
      plotly::plotlyOutput("resid_vs_pred")
      # plotly::plotlyOutput("resid_vs_numcol"),
      # plotly::plotlyOutput("resid_vs_factorcol")
    )
    server <- function(input, output, session) {
      selected_rows <- shiny::reactiveVal()
      shiny::observe({
        new <- c(
          plotly::event_data("plotly_click")$customdata,
          plotly::event_data("plotly_selected")$customdata
        )
        if (length(new)) {
          current <- shiny::isolate(selected_rows())
          selected_rows(unique(c(current, new)))
        }
        else {
          # clear the selected rows when a double-click occurs
          selected_rows(NULL)
        }
      })
      preds_dat <- shiny::reactive({
        dplyr::mutate(preds, .color = ifelse(.row %in% selected_rows(), "red", "black"))
      })
      output$obs_vs_pred <- plotly::renderPlotly({
        plot_numeric_obs_pred(preds_dat(), x$y_name)
      })
      output$resid_vs_pred <- plotly::renderPlotly({
        plot_numeric_res_pred(preds_dat(), x$y_name)
      })
      # output$resid_vs_numcol <-  plotly::renderPlotly({
      #   plot_numeric_res_numcol(preds_dat(), ".outcome", "hp")
      # })
      # output$resid_vs_factorcol <-  plotly::renderPlotly({
      #   plot_numeric_res_factorcol(preds_dat() %>%
      #                                dplyr::mutate(am = as.factor(am))
      #                              ,".outcome", "am")
      # })
    }
    shiny::shinyApp(ui, server)
  }


#' @export
#' @rdname shiny_models
shiny_models.two_cls_shiny_data <-
  function(x, hover_cols = NULL, hover_only = NULL, ...) {
    preds <- x$predictions
    ui <- shiny::fluidPage(
      plotly::plotlyOutput("obs_vs_pred"),
      plotly::plotlyOutput("conf_mat"),
      # plotly::plotlyOutput("pred_vs_numcol"),
      # plotly::plotlyOutput("pred_vs_factorcol"),
      plotly::plotlyOutput("roc_curve"),
      plotly::plotlyOutput("pr_curve")
    )
    server <- function(input, output, session) {
      selected_rows <- shiny::reactiveVal()
      shiny::observe({
        new <- c(
          plotly::event_data("plotly_click")$customdata,
          plotly::event_data("plotly_selected")$customdata
        )
        if (length(new)) {
          current <- shiny::isolate(selected_rows())
          selected_rows(unique(c(current, new)))
        }
        else {
          # clear the selected rows when a double-click occurs
          selected_rows(NULL)
        }
      })
      preds_dat <- shiny::reactive({
        dplyr::mutate(preds, .color = ifelse(.row %in% selected_rows(), "red", "black"))
      })
      output$obs_vs_pred <- plotly::renderPlotly({
        plot_twoclass_obs_pred(preds_dat(), x$y_name)
      })
      output$conf_mat <- plotly::renderPlotly({
        plot_twoclass_conf_mat(preds_dat())
      })
      # output$pred_vs_numcol <- plotly::renderPlotly({
      #   plot_twoclass_pred_numcol(preds_dat(), ".outcome", "p_tau")
      # })
      # output$pred_vs_factorcol <- plotly::renderPlotly({
      #   plot_twoclass_pred_factorcol(preds_dat(), ".outcome", "Genotype")
      # })
      output$roc_curve <- plotly::renderPlotly({
        plot_twoclass_roc(preds_dat(), ".outcome")
      })
      output$pr_curve <- plotly::renderPlotly({
        plot_twoclass_pr(preds_dat(), ".outcome")
      })
    }
    shiny::shinyApp(ui, server)
  }
