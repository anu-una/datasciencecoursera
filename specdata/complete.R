complete <- function(directory, id = 1:332)
{
  path = paste0(getwd(), "/", directory)
  data <- data.frame()
  fdata <- data.frame()
  d <- data.frame()
  dd <- data.frame()
  ff <- data.frame()
  
  for(i in id)
  {
    if(i<10)
    {
      data <- read.csv((paste0(path,"/00", as.character(i),".csv")))
      fdata <- data[complete.cases(data),]
    }
    else if(i<100)
    {
      data <- read.csv(paste0(path, "/0", as.character(i), ".csv"))
      fdata <- data[complete.cases(data),]
    }
    else if(i<1000)
    {
      data <- read.csv((paste0(path, "/", as.character(i), ".csv")))
      fdata <- data[complete.cases(data),]
    }
    
   d <- c(i, nrow(fdata))
   dd <- rbind(dd, d)
  }
  colnames(dd) <- c("id", "nobs")
  return(dd)
} 

