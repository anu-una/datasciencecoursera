corr <- function(directory, threshold =0)
{
  a<- list.files(path = paste0(getwd(),"/",directory, "/"), pattern = ".csv", full.names = TRUE) #ALWAYS TYPE FUUL.NAMES, WHEN LISTING FILES FROM DIRECTORY ALTOGETHER
  #finding the total number of rows
  number <- vector()
  for(b in seq(a))
  {
    the <- read.csv(a[b])
    number = c(number, nrow(the))
    
  }
  limit<-sum(number)
  
}

 


  