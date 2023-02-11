# Import all UI
dir.plugins.ui.files = grep("/ui/",list.files(dir.plugins, pattern = "\\.[Rr]$", full.names = TRUE, recursive = TRUE), value = TRUE)
for(file in dir.plugins.ui.files) source(file,local = TRUE)


content.leftSide <- column(
  width = 5,
  content.plugin1
)

content.rightSide <- column(
  width = 7,
  content.plugin2
)





# Declare UI function
ui <- fluidPage(
  # Choose style
  style = "5",
  
  # Set a custom background-color
   custom.bg.color = "#EAE7D4",
  
  # Application header
  header = titlePanel(left="Blank Minimal NexGenShinyApps BoilerPlate"),
  
  # Initialize automatic tracking for all
  # the app inputs
  initStore(),
  
  # No sidebar include
  # sidebar = sidebarPanel(
  #   title = "App 1.0",
  #   "A simple text"
  # )
  row(
  # include left content
  content.leftSide,
  
  #include right content
  content.rightSide
  )
  
)



