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
    # Calculate and reformat performance metrics for each candidate model
    performance <-
      x$tune_results %>%
      tune::collect_metrics() %>%
      dplyr::relocate(metric = .metric, estimate = mean) %>%
      dplyr::select(-.estimator, -n, -std_err)
    # Save info to round real number columns (if any)
    is_real_number <- purrr::map_lgl(performance, ~ is.numeric(.x) & !is.integer(.x))
    reals <- names(is_real_number)[is_real_number]

    ui <- shinydashboard::dashboardPage(
      shinydashboard::dashboardHeader(title = "SHINYMODELS"),
      shinydashboard::dashboardSidebar(
        shinydashboard::sidebarMenu(
          id = "sidebarid",
          if (length(tune::.get_tune_parameter_names(x$tune_results)) == 0) {
            shiny::helpText("No tuning parameters!")
          }
          else {
            shinydashboard::menuItem("Tuning Parameters",
              tabName = "tuning",
              icon = icon("filter")
            )
          },
          shinydashboard::menuItem("Performance Plots",
            tabName = "static",
            icon = icon("chart-bar")
          ),
          shinydashboard::menuItem("Variable Plots",
            tabName = "interactive",
            icon = icon("chart-line")
          ),
          shiny::conditionalPanel(
            'input.sidebarid == "interactive"',
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
            sliderInput("alpha", "Alpha:",
              min = 0.1, max = 1,
              value = 0.7, step = 0.1
            ),
            shiny::helpText("Select the size of the points"),
            sliderInput("size", "Size:",
              min = 0.5, max = 3,
              value = 1.5, step = 0.5
            ),
            shiny::helpText("Logit scaling for probability?"),
            radioButtons(
              "prob_scaling", "Probability scaling:",
              c(
                "TRUE" = "true",
                "FALSE" = "false"
              )
            )
          )
        )
      ),
      dashboard_body(
        shinydashboard::tabItems(
          # first tab content
          shinydashboard::tabItem(
            tabName = "tuning",
            shiny::fluidRow(
              DT::dataTableOutput("metrics")
            )
          ),
          # second tab content
          shinydashboard::tabItem(
            tabName = "static",
            shiny::fluidRow(
              if (length(tune::.get_tune_parameter_names(x$tune_results)) != 0) {
                shiny::verbatimTextOutput("selected_config")
              },
              boxed(
                plotly::plotlyOutput("obs_vs_pred"),
                "Predicted probabilities vs. true class"
              ),
              boxed(plotly::plotlyOutput("conf_mat"), "Confusion matrix"),
              boxed(plotly::plotlyOutput("roc"), "ROC curve"),
              boxed(plotly::plotlyOutput("pr"), "PR curve")
            )
          ),
          # third tab content
          shinydashboard::tabItem(
            tabName = "interactive",
            shiny::fluidRow(
              verbatimTextOutput("selected_config"),
              boxed(
                plotly::plotlyOutput("pred_vs_numcol"),
                "Predicted probabilities vs. a numeric predictor",
                num_columns
              ),
              boxed(
                plotly::plotlyOutput("pred_vs_factorcol"),
                "Predicted probabilities vs. a factor predictor",
                fac_columns
              )
            )
          )
        )
      )
    )

    server <- function(input, output) {
      output$metrics <- DT::renderDataTable({
        performance %>%
          dplyr::select(-.config) %>%
          DT::datatable(
            selection = "single",
            filter = "top",
            fillContainer = FALSE,
            rownames = FALSE
          ) %>%
          DT::formatSignif(columns = reals, digits = 3)
      })

      selected_obs <- shiny::reactiveVal()
      if (hover_only) {
        selected_obs(NULL)
      }
      else {
        shiny::observe({
          new <- c(
            plotly::event_data("plotly_click", source = "obs")$customdata,
            plotly::event_data("plotly_selected", source = "obs")$customdata
          )
          if (length(new)) {
            current <- shiny::isolate(selected_obs())
            selected_obs(unique(c(current, new)))
          }
          else {
            # clear the selected rows when a double-click occurs
            selected_obs(NULL)
          }
        })
      }
      preds_dat <- shiny::reactive({
        selected <- input$metrics_rows_selected
        if (length(selected) == 0) {
          selected_config <- x$default_config
        }
        else {
          selected_config <- preds[selected, ".config"]$.config
        }
        preds %>%
          dplyr::filter(.config == selected_config) %>%
          dplyr::mutate(.color = ifelse(.row %in% selected_obs(),
            "red", "black"
          ))
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
        plot_multiclass_pred_numcol(
          preds_dat(), x$y_name, input$num_value_col,
          input$alpha, input$size, input$prob_scaling,
          source = "obs"
        )
      })
      output$pred_vs_factorcol <- plotly::renderPlotly({
        req(input$factor_value_col)
        plot_multiclass_pred_factorcol(
          preds_dat(), x$y_name, input$factor_value_col,
          input$alpha, input$size, input$prob_scaling,
          source = "obs"
        )
      })
      output$selected_config <- renderPrint({
        paste("Selected model:", preds$.config[input$metrics_rows_selected])
      })
    }
    shiny::shinyApp(ui, server)
  }



dashboard_body <- function(...) {
  shinydashboard::dashboardBody(
    dashboard_css(), ...
  )
}

dashboard_css <- function() {
  htmltools::htmlDependency(
    name = "shinymodels-custom-css",
    version = "1.0",
    src = "www",
    package = "shinymodels",
    stylesheet = "dashboard-styles.css"
  )
}
