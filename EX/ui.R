#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#

navbarPage("Faithful Geyser Data - Customized", 
           theme = bs_theme(bootswatch = "minty"),
        tabPanel("Intro", 
          fluidPage(
            h3("Welcome to the Faithful Geyser Data App!")
          )
          ),

tabPanel("Plots",
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30), 
            selectInput("color", "Choose a color:", choices = c("cyan", "steelblue", "purple")), 
            radioButtons("plot_type", "Choose a plot type:",
                         choices = c("Histogram", "Density")),
            downloadButton("download_data", "Download Data")
            ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
)
)
