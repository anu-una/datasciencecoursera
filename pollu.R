
pollutantmean <- function(directory, pollutant, id = 1:332)

{
firstfile <- data.frame(read.csv("001.csv", "rt"))
close.connection(firstfile)

file <- list.files("specdata.dir", full.names=TRUE)  ##STORING ALL THe FILES

##creting empty data set
xyz <- data.frame()
## adding all the files together
for (i in id)
     {
  xyz <- rbind(xyz, file[i]) 
     }
##all files have been added together

##finding the pollutant and its value
abc <- function(directory, pollutant, mean)
{
  if(pollutant=="sulfate")
  {
    sul <- subset(xyz, select=c(,2))
    sulp <- mean(sul)
    return(list("specdata", "sulfate", sulp))
  }

  else if(pollutant=="nitrate")
  { 
   nit <- subset(xyz, select = c(,3))
   nitp <- mean(nit)
   return(list("specdata", "nitrate", nitp))
  }
print(abc)
}
}


  
  
