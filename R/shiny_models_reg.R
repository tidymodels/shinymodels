#'  [shiny_models()] for an object of `reg_shiny_data` class
#'
#' @export
#' @rdname shiny_models
shiny_models.reg_shiny_data <-
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
          shinydashboard::menuItem("Plots",
            tabName = "plot",
            icon = icon("chart-line")
          ),
          shiny::conditionalPanel(
            'input.sidebarid == "plot"',
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
            shiny::sliderInput("alpha", "Alpha:",
              min = 0.1, max = 1,
              value = 0.7, step = 0.1
            ),
            shiny::helpText("Select the size of the points"),
            # Input: Simple integer interval ----
            shiny::sliderInput("size", "Size:",
              min = 0.5, max = 3,
              value = 1.5, step = 0.5
            )
          )
        )
      ),
      shinydashboard::dashboardBody(
        shinydashboard::tabItems(
          # first tab content
          shinydashboard::tabItem(
            tabName = "tuning",
            shiny::fluidRow(
              verbatimTextOutput("chosen_config"),
              DT::dataTableOutput("metrics")
            )
          ),
          # second tab content
          shinydashboard::tabItem(
            tabName = "plot",
            shiny::fluidRow(
              verbatimTextOutput("selected_config"),
              boxed(
                plotly::plotlyOutput("obs_vs_pred"),
                "Observed vs. Predicted"
              ),
              boxed(
                plotly::plotlyOutput("resid_vs_pred"),
                "Residuals vs Predicted"
              ),
              boxed(
                plotly::plotlyOutput("resid_vs_numcol"),
                "Residuals vs A numeric predictor",
                num_columns
              ),
              boxed(
                plotly::plotlyOutput("resid_vs_factorcol"),
                "Residuals vs A factor predictor",
                fac_columns
              )
            )
          )
        )
      )
    )
    # Define server logic required to draw a histogram
    server <- function(input, output) {
      # Save info to round real number columns (if any)
      is_real_number <- purrr::map_lgl(preds, ~ is.numeric(.x) & !is.integer(.x))
      reals <- names(is_real_number)[is_real_number]
      output$metrics <- DT::renderDataTable({
        preds %>%
          DT::datatable(
            selection = "single",
            filter = "top",
            fillContainer = FALSE,
            rownames = FALSE
          ) %>%
          DT::formatSignif(columns = reals, digits = 3)
      })
      output$chosen_config <- renderPrint({
        paste("Selected model:", preds$.config[input$metrics_rows_selected])
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
          selected_config <- x$best_config
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
        plot_numeric_obs_pred(preds_dat(), x$y_name, input$alpha, input$size,
          source = "obs"
        )
      })
      output$resid_vs_pred <- plotly::renderPlotly({
        plot_numeric_res_pred(preds_dat(), x$y_name, input$alpha, input$size,
          source = "obs"
        )
      })
      output$resid_vs_numcol <- plotly::renderPlotly({
        req(input$num_value_col)
        plot_numeric_res_numcol(preds_dat(), x$y_name, input$num_value_col,
          input$alpha, input$size,
          source = "obs"
        )
      })
      output$resid_vs_factorcol <- plotly::renderPlotly({
        req(input$factor_value_col)
        plot_numeric_res_factorcol(preds_dat(), x$y_name, input$factor_value_col,
          input$alpha, input$size,
          source = "obs"
        )
      })
      output$selected_config <- renderPrint({
        paste("Selected model:", preds$.config[input$metrics_rows_selected])
      })
    }
    # Run the application
    shiny::shinyApp(ui = ui, server = server)
  }
