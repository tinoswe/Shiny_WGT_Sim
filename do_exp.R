do_exp <- function(df, Nmasses, Nexp){
  
  library(plyr)
  df_sim <- sample_n(df, Nmasses)
  return(df_sim)
}