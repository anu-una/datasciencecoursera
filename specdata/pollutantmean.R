pollutantmean <- function(directory, pollutant, id = 1:332)
{
  path = paste0(getwd(),"/", directory)
  value <- numeric()
  for(i in id)
  {
    if(i<10)
      {
   data <- read.csv((paste(path,"/00", as.character(i),".csv", sep="", collapse="")))
    data.frame(data)
   value <- c(value, data[[pollutant]]) 
    }
    
   else if(i<100)
    {
      data <- read.csv((paste(path,"/0", as.character(i),".csv", sep="", collapse="")))
      data.frame(data)
      value <- c(value, data[[pollutant]]) 
    
   }
    
    else if(i<1000)
    { 
      data <- read.csv((paste(path,"/", as.character(i),".csv", sep="",  collapse="")))
    data.frame(data)
    value <- c(value, data[[pollutant]]) 
    }
  }
  mean(value, na.rm = TRUE)
}


  
