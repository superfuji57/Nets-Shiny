# shiny server
library(shiny)
library(rCharts)
library(reshape2)
source("helpers.R")
shinyServer(function(input, output) {

        dataInput <- reactive({
                subset(nets, Season == input$Season)
        })
        output$chart <- renderChart2({
                m1 <- mPlot(x = "DateC", y = c("Nets", "Opp"), type = "Line", data=dataInput())
                m1$set(pointSize = 0, lineWidth = 1, lineColors=c("red", "blue"))
                return(m1)
        })
        output$text1 <- renderText({
                #"This is Text"
                data <- dataInput()
                paste("During the", input$Season, "season, the Nets averaged", 
                      round(mean(data$Nets),1), "points per game. Their opponents averaged",
                      round(mean(data$Opp),1), "points.")
                
        })
})

