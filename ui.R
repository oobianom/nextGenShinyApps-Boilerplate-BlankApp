# Import all UI
dir.plugins.ui.files = grep("/ui/",list.files(dir.plugins, pattern = "\\.[Rr]$", full.names = TRUE, recursive = TRUE), value = TRUE)

print(dir.plugins.ui.files)
lapply(dir.plugins.ui.files,source,local = TRUE)


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
  style = "8",
  
  # Set a custom background-color
  custom.bg.color = "#E5E5E5",
  
  # Application title
  title = titlePanel("Blank BoilerPlate"),
  
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



