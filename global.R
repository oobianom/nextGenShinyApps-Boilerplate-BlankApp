# Define global variables

version <- 0.1
data.release <- Sys.Date()

# Define libraries
library(shiny) 
library(nextGenShinyApps)
library(shinyStorePlus)

# Define directories
dir.utils <- 'utils'
dir.public <- 'www'
dir.plugins <- 'plugins'


# Define global environment

.appGlob <- new.env(parent = .GlobalEnv)

.appGlob$var1 <- reactiveValues()

