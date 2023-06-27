#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI ----
ui <- fluidPage(
  titlePanel("UFO Sightings"),
  
  sidebarLayout(
    sidebarPanel(
      h4 ("an extraterrestrial introduction to Rshiny", align = "center")),
    mainPanel(sliderInput("range", 
                                 label = "Range of interest:",
                                 min = 0, max = 15, value = c(0, 15))
      )))


# Define server logic ----
server <- function(input, output) {}

# Run the app ----
shinyApp(ui = ui, server = server)

