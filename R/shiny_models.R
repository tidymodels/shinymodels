#'  Internal function to run shiny application on an object of `shiny_data` class
#'
#' This function takes the [organize_data()] result to shiny_models a Shiny app.
#' @param x The [organize_data()] result.
#' @param hover_cols The columns to display while hovering in the Shiny app.
#' @param hover_only A Boolean to turn on and off hovering in the interactive
#' plots; the default option is FALSE, it is recommended to use TRUE for a big data.
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
  function(x, hover_cols = NULL, hover_only = FALSE, ...) {
    preds <- x$predictions
    ui <- shiny::fluidPage(
      plotly::plotlyOutput("obs_vs_pred"),
      plotly::plotlyOutput("resid_vs_pred"),
      uiOutput("get_numcol_names"),
      plotly::plotlyOutput("resid_vs_numcol"),
      uiOutput("get_factorcol_names"),
      plotly::plotlyOutput("resid_vs_factorcol")
    )
    server <- function(input, output, session) {
      selected_rows <- shiny::reactiveVal()
      if (hover_only) {
        selected_rows(NULL)
      }
      else {
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
      }
      preds_dat <- shiny::reactive({
        dplyr::mutate(preds, .color = ifelse(.row %in% selected_rows(), "red", "black"))
      })
      output$obs_vs_pred <- plotly::renderPlotly({
        plot_numeric_obs_pred(preds_dat(), x$y_name)
      })
      output$resid_vs_pred <- plotly::renderPlotly({
        plot_numeric_res_pred(preds_dat(), x$y_name)
      })
      output$get_numcol_names <- renderUI({
        num_columns <- x$num_cols
        if (length(num_columns) == 0) {
          NULL
        }
        else {
          selectInput(
            inputId = "num_value_col",
            label = "Numeric Columns",
            choices = unique(c("None Selected" = "", num_columns))
          )
        }
      }) # num_column_choice
      output$resid_vs_numcol <- plotly::renderPlotly({
        req(input$num_value_col)
        plot_numeric_res_numcol(preds_dat(), x$y_name, input$num_value_col)
      })
      output$get_factorcol_names <- renderUI({
        fac_columns <- x$fac_cols
        if (length(fac_columns) == 0) {
          NULL
        }
        else {
          selectInput(
            inputId = "factor_value_col",
            label = "Factor Columns",
            choices = unique(c("None Selected" = "", fac_columns))
          )
        }
      }) # factor_column_choice
      output$resid_vs_factorcol <- plotly::renderPlotly({
        req(input$factor_value_col)
        plot_numeric_res_factorcol(preds_dat(), x$y_name, input$factor_value_col)
      })
    }
    shiny::shinyApp(ui, server)
  }


#' @export
#' @rdname shiny_models
shiny_models.two_cls_shiny_data <-
  function(x, hover_cols = NULL, hover_only = FALSE, ...) {
    preds <- x$predictions
    ui <- shiny::fluidPage(
      plotly::plotlyOutput("obs_vs_pred"),
      plotly::plotlyOutput("conf_mat"),
      uiOutput("get_numcol_names"),
      plotly::plotlyOutput("pred_vs_numcol"),
      uiOutput("get_factorcol_names"),
      plotly::plotlyOutput("pred_vs_factorcol"),
      plotly::plotlyOutput("roc_curve"),
      plotly::plotlyOutput("pr_curve")
    )
    server <- function(input, output, session) {
      selected_rows <- shiny::reactiveVal()
      if (hover_only) {
        selected_rows(NULL)
      }
      else {
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
      }
      preds_dat <- shiny::reactive({
        dplyr::mutate(preds, .color = ifelse(.row %in% selected_rows(), "red", "black"))
      })
      output$obs_vs_pred <- plotly::renderPlotly({
        plot_twoclass_obs_pred(preds_dat(), x$y_name)
      })
      output$conf_mat <- plotly::renderPlotly({
        plot_twoclass_conf_mat(preds_dat())
      })
      output$get_numcol_names <- renderUI({
        num_columns <- x$num_cols
        if (length(num_columns) == 0) {
          NULL
        }
        else {
          selectInput(
            inputId = "num_value_col",
            label = "Numeric Columns",
            choices = unique(c("None Selected" = "", num_columns))
          )
        }
      }) # num_column_choice
      output$pred_vs_numcol <- plotly::renderPlotly({
        req(input$num_value_col)
        plot_twoclass_pred_numcol(preds_dat(), x$y_name, input$num_value_col)
      })
      output$get_factorcol_names <- renderUI({
        fac_columns <- x$fac_cols
        if (length(fac_columns) == 0) {
          NULL
        }
        else {
          selectInput(
            inputId = "factor_value_col",
            label = "Factor Columns",
            choices = unique(c("None Selected" = "", fac_columns))
          )
        }
      }) # factor_column_choice
      output$pred_vs_factorcol <- plotly::renderPlotly({
        req(input$factor_value_col)
        plot_twoclass_pred_factorcol(preds_dat(), x$y_name, input$factor_value_col)
      })
      output$roc_curve <- plotly::renderPlotly({
        plot_twoclass_roc(preds_dat(), x$y_name)
      })
      output$pr_curve <- plotly::renderPlotly({
        plot_twoclass_pr(preds_dat(), x$y_name)
      })
    }
    shiny::shinyApp(ui, server)
  }
