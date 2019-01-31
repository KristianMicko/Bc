#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$Graf_3 = renderPlot({
    library(arules)
    library(arulesViz)
    selektovaneTransakcie <- read.transactions("modifikovaneTrans.csv",format="single",cols=c(1,2),sep=",")
    konfidencia = .5
    if(input$VyberHodnoty_1 == .1){
      konfidencia = .1
    }
    if(input$VyberHodnoty_1 == .2){
      konfidencia = .2
    }
    if(input$VyberHodnoty_1 == .3){
      konfidencia = .3
    }
    if(input$VyberHodnoty_1 == .4){
      konfidencia = .4
    }
    if(input$VyberHodnoty_1 == .5){
      konfidencia = .5
    }
    if(input$VyberHodnoty_1 == .6){
      konfidencia = .6
    }
    
    if(input$VyberHodnoty_1 == .7){
      konfidencia = .7
    }
    
    pravidla <- apriori(selektovaneTransakcie,parameter=list(support=0.0045,confidence=konfidencia))
    if(input$VyberGrafu2 == "Basic"){
      plot(pravidla, measure=c("support","lift"), shading="confidence")
    }
    if(input$VyberGrafu2 == "two-key plot"){
      plot(pravidla, method = "two-key plot")
    }
    if(input$VyberGrafu2 == "graph"){
      plot(pravidla, method="graph")
    }
    if(input$VyberGrafu2 == "grouped"){
      plot(pravidla, method="grouped")
    }
    if(input$VyberGrafu2 == "paracoord"){
      plot(pravidla, method="paracoord", control=list(reorder=TRUE))
    }
  })
  
})
