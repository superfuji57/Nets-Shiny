# shiny ui
library(shiny)

shinyUI(fluidPage(
        titlePanel("The Brooklyn Nets Seasons"),
        sidebarLayout(
                sidebarPanel(
                        
                        selectInput("Season", "Choose a season",
                                    choices=levels(nets$Season),
                                    selected = "2013"
                                    )
                        ),
        mainPanel(
                showOutput("chart", "Morris")
                ))

        ))