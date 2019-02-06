#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

    analyza = NULL

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  x = NULL
  y = NULL
  output$Tabulka = renderDataTable({
        nacitanie = input$Subor
        if(is.null(nacitanie))
          return(NULL)
        sledovane_data = read.csv(nacitanie$datapath)
        if(is.null(sledovane_data)){
          return(NULL)
        }else{
          analyza <<- sledovane_data
          
        }
  })
  
  
   
  #output$Graf = renderPlot({
        
  #      plot(x = analyza[,input$Axes_x], y = analyza[,input$Axes_y])
        
 # })
  
  output$SelectUI_1 = renderUI({
        
        selectInput("Axes_x", "X-ova os", colnames(analyza))
  })
  
  output$SelectUI_2 = renderUI({
        selectInput("Axes_y", "Y-ova os", colnames(analyza))
  })
  
    
  observeEvent(input$Uloz,{
        
        write.csv(analyza[,c(input$Axes_x,input$Axes_y)], "vystupnySubor.csv",row.names = FALSE, quote = FALSE)
  })
  
  output$Graf_3 = renderPlot({
        library(arules)
        library(arulesViz)
        nacitanie_1 = input$Subor_2
        if(is.null(nacitanie_1))
          return(NULL)
        selektovaneTransakcie <- read.transactions(nacitanie_1$datapath,format="single",cols=c(1,2),sep=",")
        pravidla <- apriori(selektovaneTransakcie,parameter=list(support=input$VstupSupport,confidence=input$VstupSpolahlivost, minlen=2))
        plot(pravidla, measure=c("support","lift"), shading="confidence")
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
  
  output$AsociacnePravidla = renderPrint({
        library(arules)
        library(arulesViz)
        nacitanie_1 = input$Subor_2
        if(is.null(nacitanie_1))
          return(NULL)
        selektovaneTransakcie <- read.transactions(nacitanie_1$datapath,format="single",cols=c(1,2),sep=",")
        pravidla <- apriori(selektovaneTransakcie,parameter=list(support=input$VstupSupport,confidence=input$VstupSpolahlivost, minlen=2))
        inspect(pravidla)
  })
})
