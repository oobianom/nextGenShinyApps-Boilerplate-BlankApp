#
# This is a simple Shiny web application built using the nextGenShinyApps
#
# Find out more about building applications with the nextGenShinyApps here:
#
#    https://nextgenshinyapps.obi.obianom.com
#

rm(list = ls(all = TRUE))

# attach library
library(shiny)
library(nextGenShinyApps)
library(shinyStorePlus)

# Define UI
ui <- fluidPage(
  # Theme: Select color style from 1-13
  style = "2",

  # Header: Insert header content using titlePanel ------------
  header = titlePanel(left = "A Demo to Showcase the Features of the nextGenShinyApp R package", right = "Image logo"),

  # Sidebar: Insert content for sidebar ----------------------
  sidebar = sidebarPanel(
    title = "NextGenShinyApp",

    # Input: Specification of range within an interval
    sliderInput(
      inputId = "range", label = "Range:",
      min = 1, max = 1000,
      value = c(200, 500)
    )
  ),
  card(
    title = "Moveable card container",
    # card body content
    alert.text = "Realize that this card contains a status bar. More info at rpkg.net",
    alert.bg = "danger",
    "RPKG. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mi bibendum neque egestas congue quisque egestas",
    tags$br(),
    tags$h4("Input slider for the image"),
    plotOutput("sampleplot"),
    sliderInput(
      inputId = "bins",
      label = "Number of bins:",
      min = 1,
      max = 50,
      value = 30
    )
  )
)

server <- function(input, output, session){

  # make plots
  output$sampleplot <- renderPlot({
    plot(x =sample(1:input$bins,32, replace = TRUE), y = mtcars$hp)
  })

  # include shinyStorePlus to track input
  appid = "application501"
  setupStorage(appId = appid,inputs = TRUE)
}



# Run the application
shinyApp(ui, server)
