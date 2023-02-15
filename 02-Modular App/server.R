server <- function(input, output, session) {
  # import all server items
  dir.plugins.server.files <- grep("/server/", list.files(dir.plugins, pattern = "\\.[Rr]$", full.names = TRUE, recursive = TRUE), value = TRUE)
  for(file in dir.plugins.server.files) source(file,local = TRUE)



  # initialize server for all automatic stores for user inputs  !!!IMPORTANT
  appid <- "app421"
  setupStorage(appId = appid, inputs = TRUE)
}