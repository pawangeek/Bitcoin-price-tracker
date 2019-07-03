library(shiny)
library(coindeskr) #R-Package connecting to Coindesk API 
library(dygraphs)

last31 <- get_last31days_price() 

shinyUI(
  fluidPage(
    includeCSS("styles.css"),
    titlePanel(h2('Bitcoin Price Tracker')),
    sidebarPanel(id="side",
      h1('Maximum and Minimum Price'),
      h3('Minimum'),
      h4(htmlOutput('minprice')),
      h3('Maximum'),
      h4(htmlOutput('maxprice')),
      h5('Created by Pawan Jain')),
     mainPanel(id = "model",dygraphOutput("btcprice")
    )
  ))