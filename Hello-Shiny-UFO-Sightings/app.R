library(shiny)

ui <- fluidPage(
   sliderInput(inputId = "num", 
               label = "choose your number", 
               value = 55, min = 5, max = 100), 
   )

server <- function(input, output) {
  output$hist<- renderPlot({
    hist(rnorm(input$num))
  })
}

shinyApp(ui = ui, server = server)

