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
    ui <- shiny::fluidPage(theme = 'style.css',
                           #Navbar structure for UI
                           navbarPage(
                             "Welcome to Shinymodels!", theme = shinythemes::shinytheme("lumen"),
                             tabPanel(
                               "Static Plots",
                               fluid = TRUE,
                               icon = icon("chart-bar"),
                               # Sidebar layout with a input and output definitions
                               sidebarLayout(
                                 shiny::sidebarPanel(
                                   shiny::checkboxGroupInput(
                                     "plots1",
                                     "Select static plot(s) to diagnose:",
                                     choices = list(
                                       "Predicted probabilities vs True class" = "obs_vs_pred",
                                       "Confusion Matrix" = "conf_mat",
                                       "ROC curve" = "roc",
                                       "PR curve" = "pr"
                                     ),
                                     selected = "obs_vs_pred"
                                   )
                                 ),
                                 shiny::mainPanel(shiny::fluidRow(shiny::uiOutput("plot_list1"))
                                 )
                               )
                             ),
                           tabPanel(
                             "Interactive Plots",
                             fluid = TRUE,
                             icon = icon("chart-line"),
                             # Sidebar layout with a input and output definitions
                             sidebarLayout(
                               shiny::sidebarPanel(
                                 shiny::checkboxGroupInput(
                                   "plots2",
                                   "Select interactive plot(s) to diagnose:",
                                   choices = list(
                                     "Predicted probabilities vs A numeric column" = "pred_vs_numcol",
                                     "Predicted probabilities vs A factor column" = "pred_vs_factorcol"
                                   ),
                                   selected = "pred_vs_numcol"
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
                                 }
                               ),
                               shiny::mainPanel(shiny::fluidRow(shiny::uiOutput("plot_list2"))
                               )
                             )
                           )
                           )
    )

    server <- function(input, output, session) {
      selected_rows <- shiny::reactiveVal()
      if (hover_only) {
        selected_rows(NULL)
      }
      else {
        shiny::observe({
          new <-
            c(#TODO not sure if we even need this plotly::event_data("plotly_click")$customdata,
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
        if ("obs_vs_pred" %in% input$plots1) {
          plot_twoclass_obs_pred(preds_dat(), x$y_name)
        }
      })
      output$conf_mat <- plotly::renderPlotly({
        req(preds_dat())
        if ("conf_mat" %in% input$plots1) {
          plot_twoclass_conf_mat(preds_dat())
        }
      })
      output$pred_vs_numcol <- plotly::renderPlotly({
        req(input$num_value_col)
        req(preds_dat())
        if ("pred_vs_numcol" %in% input$plots2) {
          plot_twoclass_pred_numcol(preds_dat(), x$y_name, input$num_value_col)
        }
      })
      output$pred_vs_factorcol <- plotly::renderPlotly({
        req(input$factor_value_col)
        req(preds_dat())
        if ("pred_vs_factorcol" %in% input$plots2) {
          plot_twoclass_pred_factorcol(preds_dat(), x$y_name, input$factor_value_col)
        }
      })

      output$roc <- plotly::renderPlotly({
        req(preds_dat())
        if ("roc" %in% input$plots1) {
          plot_twoclass_roc(preds_dat(), x$y_name)
        }
      })
      output$pr <- plotly::renderPlotly({
        req(preds_dat())
        if ("pr" %in% input$plots1) {
          plot_twoclass_pr(preds_dat(), x$y_name)
        }
      })

      output$plot_list1 <- shiny::renderUI({
        plot_output_list1 <- lapply(input$plots1,
                                    function(plotname) {
                                      plotly::plotlyOutput(plotname) ##TODO wrap the plotOutput in column to render side-by-side
                                    })

        # Convert the list to a tagList - this is necessary for the list of items
        # to display properly.
        do.call(tagList, plot_output_list1)
      })
      output$plot_list2 <- shiny::renderUI({
        plot_output_list2 <- lapply(input$plots2,
                                    function(plotname) {
                                      plotly::plotlyOutput(plotname) ##TODO wrap the plotOutput in column to render side-by-side
                                    })

        # Convert the list to a tagList - this is necessary for the list of items
        # to display properly.
        do.call(tagList, plot_output_list2)
      })

    }
    shiny::shinyApp(ui, server)
  }
