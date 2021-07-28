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
          shinydashboard::menuItem("Plots", tabName = "interactive", icon = icon("chart-line")),
          if (length(tune::.get_tune_parameter_names(x$tune_results)) == 0){
            shiny::helpText("No tuning parameters!")
          }
          else{
            shinydashboard::menuItem("Tuning Parameters", tabName = "tuning",
                                     icon = icon("filter"))
          },
          shiny::helpText("Select column(s) to create plots"),
          if (length(num_columns) == 0) {
            shiny::helpText("No numeric column to display")
          }
          else {
            shiny::selectInput(
              inputId = "num_value_col",
              label = "Numeric Columns",
              choices = unique(c("None Selected" = "", num_columns))
            )},
          if (length(fac_columns) == 0) {
            shiny::helpText("No factor column to display")
          }
          else {
            shiny::selectInput(
              inputId = "factor_value_col",
              label = "Factor Columns",
              choices = unique(c("None Selected" = "", fac_columns))
            )},
          shiny::helpText("Select the opacity of the points"),
          # Input: Simple integer interval ----
          shiny::sliderInput("alpha", "Alpha:",
            min = 0, max = 1,
            value = 0.7, step = 0.1
          ),
          shiny::helpText("Select the size of the points"),
          # Input: Simple integer interval ----
          shiny::sliderInput("size", "Size:",
            min = 0.5, max = 3,
            value = 1.5, step = 0.5
          )
        )
      ),
      shinydashboard::dashboardBody(
        shinydashboard::tabItems(
          # First tab content
          shinydashboard::tabItem(
            tabName = "interactive",
            shiny::fluidRow(
              boxed(
                plotly::plotlyOutput("obs_vs_pred"),
                "Observed vs. Predicted"
              ),
              boxed(plotly::plotlyOutput("resid_vs_pred"), "Residuals vs Predicted"),
              boxed(plotly::plotlyOutput("resid_vs_numcol"), "Residuals vs A numeric column",
                    num_columns),
              boxed(plotly::plotlyOutput("resid_vs_factorcol"), "Residuals vs A factor column",
                    fac_columns)
            )
          ),
          # second tab content
          shinydashboard::tabItem(
            tabName = "tuning",
            shiny::fluidRow(
              boxed(plotly::plotlyOutput("tuning_autoplot"),
                    "Tuning Parameters", width = 12)
            )
          )
        )
      )
    )
    # Define server logic required to draw a histogram
    server <- function(input, output) {
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
        plot_numeric_obs_pred(preds_dat(), x$y_name, input$alpha, input$size)
      })
      output$resid_vs_pred <- plotly::renderPlotly({
        plot_numeric_res_pred(preds_dat(), x$y_name, input$alpha, input$size)
      })
      output$resid_vs_numcol <- plotly::renderPlotly({
        req(input$num_value_col)
        plot_numeric_res_numcol(preds_dat(), x$y_name, input$num_value_col, input$alpha, input$size)
      })
      output$resid_vs_factorcol <- plotly::renderPlotly({
        req(input$factor_value_col)
        plot_numeric_res_factorcol(preds_dat(), x$y_name, input$factor_value_col, input$alpha, input$size)
      })
      output$tuning_autoplot <- plotly::renderPlotly({
        plot_tuning_params(x$tune_results)
      })
    }

    # Run the application
    shiny::shinyApp(ui = ui, server = server)
  }
