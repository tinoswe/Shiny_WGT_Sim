source("load_data.R")

shinyServer(function(input, output) {
  
  output$table <- renderDataTable( 
    
    dataset <- df_1685,
    options = list(pageLength = 25,
                   dom  = 'tip'))
  
})