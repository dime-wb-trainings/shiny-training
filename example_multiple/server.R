#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

function(input, output, session) {
  
  output$distPlot <- renderPlot({
    
    waiting_times <- faithful$waiting
    
    if (input$plotType == "histogram") {
      
      bins <- seq(min(waiting_times), max(waiting_times), length.out = input$bins + 1)
      
      hist(
        waiting_times,
        breaks = bins,
        col = input$color,
        border = "white",
        xlab = "Waiting time to next eruption (mins)",
        main = "Histogram of waiting times"
      )
      
    } else if (input$plotType == "density") {
      
      plot(
        density(waiting_times),
        col = input$color,
        lwd = 2,
        xlab = "Waiting time to next eruption (mins)",
        main = "Density plot of waiting times"
      )
      
    } else {
      plot.new()
      text(0.5, 0.5, "Unknown plot type selected", cex = 1.2)
    }
    
  })
  
  output$download_data <- downloadHandler(
    filename = function() { "faithful_data.csv" },
    content = function(file) {
      write.csv(faithful, file, row.names = FALSE)
    }
  )
  
}


