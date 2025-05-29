#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#


# Define UI for application that draws a histogram
navbarPage("Faithful Geyser Data - Customized", 
           theme = bs_theme(bootswatch = "minty"),
           tabPanel("Introduction", 
                        h3("Exploring the Faithful Geyser Data"),
                        p("This application allows you to visualize the waiting times between eruptions of the Old Faithful geyser. 
                          You can choose between a histogram and a density plot, adjust the number of bins, and select a color for the plot.")
                  
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
            selectInput("color", "Choose a color:", choices = c("turquoise", "plum", "orchid")),
            radioButtons("plot_type", "Choose a plot type:",
                         choices = c("Histogram", "Density")), 
            downloadButton("download_data", "Download Data")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
),
tabPanel("Table",
             h2("Faithful Geyser Data Table"),
             p("Below is the table of the Old Faithful geyser data. You can view the waiting times between eruptions."),
             tableOutput("data_table")
         )
)

