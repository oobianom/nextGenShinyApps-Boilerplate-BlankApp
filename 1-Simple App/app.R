#
# This is a simple Shiny web application built using the nextGenShinyApps
#
# Find out more about building applications with the nextGenShinyApps here:
#
#    https://nextgenshinyapps.obi.obianom.com
#

rm(list = ls(all = TRUE))

# Attach library
library(shiny)
library(nextGenShinyApps)

# Define UI
ui <- fluidPage(
  # Theme: Select color style from 1-13
  style = "2",

  # Header: Insert header content using titlePanel ------------
  header = titlePanel(left = "App 1: Simple App with Moveable Cards", right = "Image logo"),

  # Sidebar: Insert content for sidebar ----------------------
  sidebar = sidebarPanel(
    title = "NextGenShinyApp",

    # Input: Specification of range within an interval
    sliderInput(
      inputId = "range",
      label = "Range:",
      min = 1,
      max = 1000,
      value = c(200, 500)
    )
  ),

  # Body --------------------------------------
  altPanel(
    card(
      title = "Moveable card container A",
      "This card is moveable. Try moving this card to the bottom. Refresh and see that changes remain. yay!"
    ),
    card(
      title = "Moveable card container B",
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
    ),
    width = 12
  )
)

server <- function(input, output, session) {
  # make plots
  output$sampleplot <- renderPlot({
    plot(x = sample(1:input$bins, 32, replace = TRUE),
         y = mtcars$hp)
  })
}



# Run the application
shinyApp(ui = ui, server = server)
