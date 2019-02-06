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
  
  tabsetPanel(
            tabPanel("Tab 1", verticalLayout(
                            h1("Data"),
                            fileInput("Subor", "Vyber suboru pre spracovanie"),
                            dataTableOutput("Tabulka")
                            
                            )
            ),
            tabPanel("Tab 2", verticalLayout(
                            h1("Modelovanie"),
                            #plotOutput("Graf"),
                            htmlOutput("SelectUI_1"),
                            htmlOutput("SelectUI_2"),
                            actionButton("Uloz","Zapis")
                            )
            ),
            tabPanel("Tab 3", verticalLayout(
              #selectInput("VyberGrafu2","Vyber", c("Basic","two-key plot","graph","grouped","paracoord")),
              fileInput("Subor_2", "Vyber suboru pre spracovanie"),
              selectInput("VyberGrafu2","Vyber", c("Basic","two-key plot","graph","grouped","paracoord")),
              numericInput("VstupSupport","minimalna podpora",value = 0.05, min = 0, max = 1),
              numericInput("VstupSpolahlivost","minimalna spolahlivost",value = 0.05, min = 0, max = 1),
              plotOutput("Graf_3"),
              verbatimTextOutput("AsociacnePravidla")
              #selectInput("VyberHodnoty_1","Zadaja hodnotu spolahlivosti",c(.1,.2,.3,.4,.5,.6,.7))
                            )  
            )
  )
  
  
))
