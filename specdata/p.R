pollutantmean <- function(directory, pollutant, id = 1:332)
{
  my_files <- list.files("C:/Users/Amit Singh/Desktop/Coursera/specdata")
  file1 <- data.frame()
  xyz<-numeric()
  file_total <- data.frame

  #binding files
  for( index in id)
  {
    file1 <- read.csv(file1[index]) #reading files into file1 one by one
    file_total <- rbind(file_total file1[[index]])
  }
  
   if(file_total[[pollutant]]=="sulfate")
    {
	xyz <- mean(subset(file_total c(,2) ))
    }

    if(pollutant == "nitrate") 
    {
	file_mean <- mean(subset(file1, c="nitrate")
    }

    return(list(dirname, pollutant, file_mean)) 
print (pollutantmean)
}