#
# Created by Obinna Obianom
#

# Define functions
dir.utils.functions <- file.path(dir.utils,"functions")
dir.utils.functions.files <- list.files(dir.utils.functions,pattern = ".R$", full.names = TRUE)
lapply(dir.utils.functions.files,source,local=TRUE)

# Define the server and UI for application  
source('ui.R',local = TRUE)
source('server.R', local = TRUE)

# Run the application 
shinyApp(ui = ui, server = server)
