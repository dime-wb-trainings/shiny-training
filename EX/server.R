#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/

# Define server logic required to draw a histogram
function(input, output, session) {

    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
         x  <- faithful[, 2]
        
        if (input$plot_type == "Histogram") {
        
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = input$color, border = 'white',
             xlab = 'Waiting time to next eruption (in mins)',
             main = 'Histogram of waiting times')
        
        } else if (input$plot_type == "Density") 
        
        {
          
          plot(
            density(x),
            col = input$color,
            lwd = 2,
            xlab = "Waiting time to next eruption (mins)",
            main = "Density plot of waiting times"
          )  
          
        }

    })
    
    output$download_data <- downloadHandler(
      filename = function() { "faithful_data.csv" },
      content = function(file) {
        write.csv(faithful, file, row.names = FALSE)
      }
    )

}
