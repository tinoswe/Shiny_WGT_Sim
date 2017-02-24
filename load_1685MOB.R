load_1685MOB <- function(){
  df <- read.table("../Masse_2017/Data/CSV/1685_MOB.csv", 
                   header = FALSE,
                   row.names = NULL,
                   sep=";",
                   stringsAsFactors = FALSE)
  colnames(df) <- c("id","p1","p2","p3")
  m1 <- as.matrix(df[,c("p1","p2","p3")]) 
  m1 <- gsub(",", ".", m1)  
  df[,c("p1","p2","p3")] <- m1
  df[,c("p1","p2","p3")] <- 1e-3*sapply(df[,c("p1","p2","p3")], as.numeric)
  df$id <- c()
  df$avg <- rowMeans(df)
  df$typeA <- apply(df[, c("p1","p2","p3")],
                    1,
                    sd)
  df$typeB <- 1e-3*0.22/2 #0.22 g fino a 6 kg
  df$u_c <- sqrt(df$typeA^2 + df$typeB^2)
  df$Uk2 <- 2*df$u_c
  df[,c("p1","p2","p3","typeA","typeB","Uk2")] <- c()
  return(df)
}