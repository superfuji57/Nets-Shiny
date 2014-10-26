# shiny ui
library(shiny)

shinyUI(fluidPage(
        titlePanel(h1("The Brooklyn Nets Performance by Game")),
        sidebarLayout(
                sidebarPanel(
                        h5("A look at how the NBA's Brooklyn Nets (formerly of New Jersey) performed since the
                          2000 season."),
                        p("The data used for the application was gathered from webscraping basketball-reference.com"),
                        p("To start, select a season from the drop-down menu below. You can hover your mouse over the 
                          chart to the right to see the final score with the Nets' points in red and their opponents' points in blue"),
                        selectInput("Season", "Choose a season",
                                    choices=levels(nets$Season),
                                    selected = "2013"
                                    ),
                        
                        textOutput("text1")
                        ),
        mainPanel(
                showOutput("chart", "Morris")
                ))

        ))