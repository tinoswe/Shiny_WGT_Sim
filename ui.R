shinyUI(
  fluidPage(
    titlePanel("Incertezza estesa del carico totale applicato utilizzando combinazioni di masse da 1, 5 e 10 kg"),
  
  fluidRow(
    
    column(3, 
           numericInput("m1", 
                        label = h4("n° masse da 1 kg"), 
                        value = 5)),
    
    column(3, 
           numericInput("m5", 
                        label = h4("n° masse da 5 kg"), 
                        value = 5)),
    
    column(3, 
           numericInput("m10", 
                        label = h4("n° masse da 10 kg"), 
                        value = 5)),
    
    column(3, 
           numericInput("m10", 
                        label = h4("n° esperimenti virtuali"), 
                        value = 1000))   
  ),
  
  mainPanel(
    tabsetPanel(
      tabPanel("Data", dataTableOutput('table'))
    ))
  )
)