#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Asociacne Pravidla"),
  
  tabsetPanel(
    
    tabPanel("Modelovanie", verticalLayout(
      selectInput("VyberGrafu2","Vyber", c("Basic","two-key plot","graph","grouped","paracoord")),
      plotOutput("Graf_3"),
      selectInput("VyberHodnoty_1","Zadaja hodnotu spolahlivosti",c(.1,.2,.3,.4,.5,.6,.7))
      
    )
    
    )
    
    
  )
  
  
  
  
))
