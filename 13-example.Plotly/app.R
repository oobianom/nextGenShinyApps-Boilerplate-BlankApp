# Example plotly
quickcode::clean(clearPkgs = T)
libraryAll(shiny,plotly,nextGenShinyApps)

ui <- fluidPage(
  style = "4",
  header = nextGenShinyApps::titlePanel(left = "PLOTLY example", right = "@obinna.obianom"),
  row(
    altPanel(
      width = 12,
      card(title = "The choices", selectInput("choice", "Choose", choices = names(iris), selected = NULL)),
      card(title = "The plot output", plotlyOutput("graph"))
    )
  )
)

server <- function(input, output, session) {
  output$graph <- renderPlotly({
    plot_ly(iris, x = ~ get(input$choice), y = ~Sepal.Length, type = "scatter", mode = "markers")
  })
}

shinyApp(ui, server)
