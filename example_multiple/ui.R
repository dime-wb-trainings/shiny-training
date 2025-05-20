#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#



# Define UI using navbarPage
navbarPage("Faithful Geyser Data - Customized",
           theme = bs_theme(bootswatch = "minty"),
                 tabPanel("Introduction",
                          fluidPage(
                            h3("Welcome!"),
                            p("This is a Shiny app that allows you to visualize the waiting times of the Old Faithful geyser in Yellowstone National Park."),
                            p("Use the sidebar controls in the 'Plot' tab to change the number of bins, the color of the graph, and the type of plot."),
                            p("This intro page is useful for explaining your app to users before they interact with it.")
                          )
                 ),
                 
                 tabPanel("Plot",
                          sidebarLayout(
                            sidebarPanel(
                              sliderInput("bins",
                                          "Number of bins:",
                                          min = 1,
                                          max = 50,
                                          value = 30), 
                              selectInput("color", "Choose a color:", 
                                          choices = c("turquoise", "plum", "orchid"),
                                          selected = "turquoise"),
                              radioButtons("plotType",
                                           "Select a plot type:",
                                           choices = c("Histogram" = "histogram", "Density" = "density"),
                                           selected = "histogram"), 
                              downloadButton("download_data", "Download Data")
                            ),
                            mainPanel(
                              plotOutput("distPlot")
                            )
                          )
                 )
)