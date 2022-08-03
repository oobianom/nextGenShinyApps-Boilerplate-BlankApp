server <- function(input, output) {
  #import all server items
  dir.plugins.server.files = list.files(dir.plugins, pattern = "(*)+server+[^[:alnum:]]+(*)", full.names = TRUE, recursive = TRUE)
  lapply(dir.plugins.ui.files,source,local = TRUE)
  
  
  
  #initialize server for all automatic stores for user inputs  !!!IMPORTANT
  appid = "application501"
  setupStorage(appId = appid,inputs = TRUE)
}