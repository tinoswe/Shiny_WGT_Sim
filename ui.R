shinyUI(
  fluidPage(
    titlePanel("Incertezza composta"),
  
  fluidRow(
    
    column(3, 
           numericInput("m1", 
                        label = h3("n° masse da 1 kg"), 
                        value = 1)),
    
    column(3, 
           numericInput("m5", 
                        label = h3("n° masse da 5 kg"), 
                        value = 1)),
    
    column(3, 
           numericInput("m10", 
                        label = h3("n° masse da 10 kg"), 
                        value = 1))   
  )#,
  
  #sidebarLayout(
  #  sidebarPanel( "sidebar panel"),
  #  mainPanel("main panel")
  #)
  
  
  
))