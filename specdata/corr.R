corr <- function(directory, threshold =0)
{
  
  a<- list.files(path = paste0(getwd(),"/",directory, "/"), pattern = ".csv", full.names = TRUE) #ALWAYS TYPE FUUL.NAMES, WHEN LISTING FILES FROM DIRECTORY ALTOGETHER
  
  final<- vector()

  for(i in 1:332 )#acceptable since only first 6 values are to printed
   {
     aa<- read.csv(a[i])
     xx<- aa[complete.cases(aa), ]
     x <- xx[ , 2] #presently as a vector #subsetted the xx to extract sulfate column
     y <- xx[ ,3] #presently as vector, subsetted xx to extract nitrate column
     z <-cor(x, y)
     
     
     if(nrow(aa)>threshold)
     final<-c(final, z)
     }
  
     return (final)   
}
    
     
    
   
  
  




