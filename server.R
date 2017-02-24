source("load_data.R")
source("do_exp.R")

shinyServer(function(input, output) {
  
  output$table <- renderDataTable( 
    
    dataset <- do_exp(df_1685,
                      input$m5,#Nmasses
                      10 #Nexp 
                      ),
    
    options = list(pageLength = 25,
                   dom  = 'tip'))
  
})