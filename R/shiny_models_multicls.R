#'  [shiny_models()] for an object of `multi_cls_shiny_data` class
#'
#' @export
#' @rdname shiny_models
shiny_models.multi_cls_shiny_data <-
  function(x,
           hover_cols = NULL,
           hover_only = FALSE,
           ...) {
    preds <- x$predictions
    num_columns <- x$num_cols
    fac_columns <- x$fac_cols
    ui <- shinydashboard::dashboardPage(
      shinydashboard::dashboardHeader(title = "Shinymodels"),
      shinydashboard::dashboardSidebar(
        shinydashboard::sidebarMenu(
          shinydashboard::menuItem("Static Plots", tabName = "static",
                                   icon = icon("chart-bar")),
          shinydashboard::menuItem("Interactive Plots", tabName = "interactive",
                                   icon = icon("chart-line")),
          shiny::helpText("Select column(s) to create plots"),
          if (length(num_columns) == 0) {
            shiny::helpText("No numeric column to display")
          }
          else {
            shiny::selectInput(
              inputId = "num_value_col",
              label = "Numeric Columns",
              choices = unique(c("None Selected" = "", num_columns))
            )
          },
          if (length(fac_columns) == 0) {
            shiny::helpText("No factor column to display")
          }
          else {
            shiny::selectInput(
              inputId = "factor_value_col",
              label = "Factor Columns",
              choices = unique(c("None Selected" = "", fac_columns))
            )
          },
          shiny::helpText("Select the opacity of the points"),
          # Input: Simple integer interval ----
          sliderInput("alpha", "Alpha:",
                      min = 0, max = 1,
                      value = 0.7, step = 0.1
          ),
          shiny::helpText("Select the size of the points"),
          # Input: Simple integer interval ----
          sliderInput("size", "Size:",
                      min = 0.5, max = 3,
                      value = 1.5, step = 0.5
          ),
          shiny::helpText("Logit scaling for probability?"),
          radioButtons("prob_scaling", "Probability scaling:",
                       c("TRUE" = "true",
                         "FALSE" = "false"))
        )
      ),
      shinydashboard::dashboardBody(
        shinydashboard::tabItems(
          # First tab content
          shinydashboard::tabItem(
            tabName = "static",
            shiny::fluidRow(
              boxed(plotly::plotlyOutput("obs_vs_pred"),
                    "Predicted probabilities vs true class"),
              boxed(plotly::plotlyOutput("conf_mat"),  "Confusion matrix"),
              boxed(plotly::plotlyOutput("roc"),  "ROC curve"),
              boxed(plotly::plotlyOutput("pr"), "PR curve")
            )
          ),
          # Second tab content
          shinydashboard::tabItem(
            tabName = "interactive",
            shiny::fluidRow(
              boxed(plotly::plotlyOutput("pred_vs_numcol"),
                    "Predicted probabilities vs numeric columns",
                    num_columns),
              boxed(plotly::plotlyOutput("pred_vs_factorcol"),
                    "Predicted probabilities vs factor columns",
                    fac_columns)
            )
          )
        )
      )
    )

    server <- function(input, output) {
      selected_rows <- shiny::reactiveVal()
      if (hover_only) {
        selected_rows(NULL)
      }
      else {
        shiny::observe({
          new <-
            c(
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
        plot_multiclass_obs_pred(preds_dat(), x$y_name)
      })
      output$conf_mat <- plotly::renderPlotly({
        plot_multiclass_conf_mat(preds_dat())
      })
      output$roc <- plotly::renderPlotly({
        plot_multiclass_roc(preds_dat(), x$y_name)
      })
      output$pr <- plotly::renderPlotly({
        plot_multiclass_pr(preds_dat(), x$y_name)
      })
      output$pred_vs_numcol <- plotly::renderPlotly({
        req(input$num_value_col)
        plot_multiclass_pred_numcol(preds_dat(), x$y_name, input$num_value_col,
                                    input$alpha, input$size, input$prob_scaling)
      })
      output$pred_vs_factorcol <- plotly::renderPlotly({
        req(input$factor_value_col)
        plot_multiclass_pred_factorcol(preds_dat(), x$y_name, input$factor_value_col,
                                       input$alpha, input$size, input$prob_scaling)
      })
    }

    shiny::shinyApp(ui, server)
  }