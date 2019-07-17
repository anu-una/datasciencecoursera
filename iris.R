library(datasets)
data("iris")
a <- data.frame()
aa <- data.frame()
m <- function()
{
  a <-  as.data.frame(iris)
  aa <- sapply(a, mean, a[ ,1])
  aa
  
}

