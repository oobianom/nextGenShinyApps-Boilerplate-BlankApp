content.plugin1.section1 <- div(
  actionButton("inputsleft","Inputs left", icon=icon("filter"), outline = TRUE, bg.type = "danger"),
  actionButton("inputsright","Inputs right", icon=icon("bars"), bg.type = "info"),
  actionButton("inputsbtm","Inputs bottom", icon=icon("folder"), bg.type = "secondary"),
  br(),br(),
  textInput("text1","Enter text", style = "clean", border.type = "info"),
  textInput("text1","Enter text", style = "round", border.type = "info"),
  sliderInput("bins",
              "Number of bins:",
              min = 1,
              max = 50,
              value = 30))
