box::use(
  shiny[...],
)
box::use(
  common_modules / graphs / km_plot[km_plot],
  common_modules / tables / safety_table[safety_table],
  app_1 / app / view / app_1_view[app_1_view],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  bootstrapPage(
    textOutput(ns("app_view")),
    textOutput(ns("km_plot")),
    textOutput(ns("safety_table"))
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    output$app_view <- renderText({
      app_1_view()
    })
    output$km_plot <- renderText({
      km_plot()
    })
    output$safety_table <- renderText({
      safety_table()
    })
  })
}
