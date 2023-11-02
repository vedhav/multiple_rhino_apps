box::use(
  shiny[...],
)
box::use(
  common_modules / graphs / km_plot[km_plot],
  common_modules / graphs / scatter_plot[scatter_plot],
  common_modules / tables / demographic_table[demographic_table],
  app_1 / app / view / app_1_view[app_1_view],
  app_2 / app / view / app_2_view[app_2_view],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  bootstrapPage(
    textOutput(ns("app_1_view")), # Yeah! You can use a module from another app too if you wanted, But not recommended.
    textOutput(ns("app_2_view")),
    textOutput(ns("km_plot")),
    textOutput(ns("scatter_plot")),
    textOutput(ns("demographic_table"))
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    output$app_1_view <- renderText({
      app_1_view()
    })
    output$app_2_view <- renderText({
      app_2_view()
    })
    output$km_plot <- renderText({
      km_plot()
    })
    output$scatter_plot <- renderText({
      scatter_plot()
    })
    output$demographic_table <- renderText({
      demographic_table()
    })
  })
}
