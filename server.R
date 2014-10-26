# shiny server
library(shiny)
library(rCharts)
load("./data/nets.Rda")

shinyServer(function(input, output) {
        
        output$chart <- renderChart2({
                m1 <- mPlot(x = "DateC", y = c("Nets", "Opp"), type = "Line", data=subset(nets, Season == input$Season))
                m1$set(pointSize = 0, lineWidth = 1, lineColors=c("red", "blue"))
                return(m1)
                
        })
})

