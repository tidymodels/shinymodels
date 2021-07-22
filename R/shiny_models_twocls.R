#'  [shiny_models()] for an object of `two_cls_shiny_data` class
#'
#' @export
#' @rdname shiny_models
shiny_models.two_cls_shiny_data <-
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
          shinydashboard::menuItem("Static Plots", tabName = "static", icon = icon("chart-bar")),
          shinydashboard::menuItem("Interactive Plots", tabName = "interactive", icon = icon("chart-line")),
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
          }
        )
      ),
      shinydashboard::dashboardBody(
        shinydashboard::tabItems(
          # First tab content
          shinydashboard::tabItem(tabName = "static",
                                  shiny::fluidRow(
                                    shinydashboard::box( plotly::plotlyOutput("obs_vs_pred"), solidHeader = T, collapsible = T,
                                                         title = "Predicted probabilities vs True class", status = "primary", collapsed = T),
                                    shinydashboard::box( plotly::plotlyOutput("conf_mat"), solidHeader = T, collapsible = T,
                                                         title =  "Confusion Matrix", status = "primary", collapsed = T),
                                    shinydashboard::box( plotly::plotlyOutput("roc"), solidHeader = T, collapsible = T,
                                                         title = "ROC curve", status = "primary", collapsed = T),
                                    shinydashboard::box( plotly::plotlyOutput("pr"), solidHeader = T, collapsible = T,
                                                         title =  "PR curve", status = "primary", collapsed = T)
                                  )
          ),
          # Second tab content
          shinydashboard::tabItem(tabName = "interactive",
                                  shiny::fluidRow(
                                    if (length(num_columns)==0){
                                      NULL
                                    }
                                    else{
                                      shinydashboard::box( plotly::plotlyOutput("pred_vs_numcol"), solidHeader = T, collapsible = T,
                                                           title = "Predicted probabilities vs A numeric column", status = "primary", collapsed = T)},
                                    if (length(fac_columns)==0){
                                      NULL
                                    }
                                    else{
                                      shinydashboard::box( plotly::plotlyOutput("pred_vs_factorcol"), solidHeader = T, collapsible = T,
                                                           title =  "Predicted probabilities vs A factor column", status = "primary", collapsed = T)}
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
        plot_twoclass_obs_pred(preds_dat(), x$y_name)
      })
      output$conf_mat <- plotly::renderPlotly({
        plot_twoclass_conf_mat(preds_dat())
      })
      output$roc <- plotly::renderPlotly({
        plot_twoclass_roc(preds_dat(), x$y_name)
      })
      output$pr <- plotly::renderPlotly({
        plot_twoclass_pr(preds_dat(), x$y_name)
      })
      output$pred_vs_numcol <- plotly::renderPlotly({
        req(input$num_value_col)
        plot_twoclass_pred_numcol(preds_dat(), x$y_name, input$num_value_col)
      })
      output$pred_vs_factorcol <- plotly::renderPlotly({
        req(input$factor_value_col)
        plot_twoclass_pred_factorcol(preds_dat(), x$y_name, input$factor_value_col)
      })
    }

    shiny::shinyApp(ui, server)
  }
