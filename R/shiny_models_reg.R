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
    ui <- shiny::fluidPage(
      theme = 'style.css',
      #Navbar structure for UI
      navbarPage(
        "Welcome to Shinymodels!",
        theme = shinythemes::shinytheme("lumen"),
        sidebarLayout(
          shiny::sidebarPanel(
            shiny::checkboxGroupInput(
              "plots",
              "Select plot(s) to diagnose:",
              choices = list(
                "Observed vs. Predicted" = "obs_vs_pred",
                "Residuals vs Predicted" = "resid_vs_pred",
                "Residuals vs A numeric column" = "resid_vs_numcol",
                "Residuals vs A factor column" = "resid_vs_factorcol"
              ),
              selected = "obs_vs_pred"
            ),
            if (length(num_columns) == 0) {
              NULL
            }
            else {
              shiny::selectInput(inputId = "num_value_col",
                                 label = "Numeric Columns",
                                 choices = unique(c("None Selected" = "", num_columns)))
            },
            if (length(fac_columns) == 0) {
              NULL
            }
            else {
              shiny::selectInput(inputId = "factor_value_col",
                                 label = "Factor Columns",
                                 choices = unique(c("None Selected" = "", fac_columns)))
            },
            shiny::helpText("Select column(s) to create plots")
          ),
          shiny::mainPanel(shiny::fluidRow(shiny::uiOutput("plot_list")))
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
          new <- c(#TODO not sure if we need this plotly::event_data("plotly_click")$customdata,
            plotly::event_data("plotly_selected")$customdata)
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
        req(preds_dat())
        if ("obs_vs_pred" %in% input$plots) {
          plot_numeric_obs_pred(preds_dat(), x$y_name)
        }
      })

      output$resid_vs_pred <- plotly::renderPlotly({
        req(preds_dat())
        if ("resid_vs_pred" %in% input$plots) {
          plot_numeric_res_pred(preds_dat(), x$y_name)
        }
      })

      output$resid_vs_numcol <- plotly::renderPlotly({
        req(input$num_value_col)
        req(preds_dat())
        if ("resid_vs_numcol" %in% input$plots) {
          plot_numeric_res_numcol(preds_dat(), x$y_name, input$num_value_col)
        }
      })

      output$resid_vs_factorcol <- plotly::renderPlotly({
        req(input$factor_value_col)
        req(preds_dat())
        if ("resid_vs_factorcol" %in% input$plots) {
          plot_numeric_res_factorcol(preds_dat(), x$y_name, input$factor_value_col)
        }
      })

      output$plot_list <- shiny::renderUI({
        plot_output_list <- lapply(input$plots,
                                   function(plotname) {
                                     plotly::plotlyOutput(plotname) ##if desired, wrap in column to render side-by-side
                                   })

        # Convert the list to a tagList - this is necessary for the list of items
        # to display properly.
        do.call(tagList, plot_output_list)
      })
    }
    shinyApp(ui = ui, server = server)
  }
