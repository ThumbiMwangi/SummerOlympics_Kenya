# app.R

library(shiny)
library(ggplot2)
library(dplyr)

# Source the modules
source("R/ui_elements.R")
source("R/server_logic.R")

# Load the dataset
medals_data <- read.csv("data/SummerOlympicsKenyaMedals.csv")

# Define the UI
ui <- fluidPage(
  mod_ui("medals_ui")
)

# Define the server logic
server <- function(input, output, session) {
  mod_server("medals_ui", medals_data)
}

# Run the application 
shinyApp(ui = ui, server = server)