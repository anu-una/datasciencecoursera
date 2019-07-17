con <- file("hw1_data.csv", "rt")
data <- read.csv(con)
close (con)

##VALUE OF ozone in 47th row

x<- data[47, 1]
print(x)

##finding the number of NA in ozone column
ni <- subset(data, select = c("Ozone"))
bad <- is.na(ni)
w = length(ni[bad])
print (w)

##finding mean of ozone values
asd <- data.matrix(ni)
dd <- summary(asd)
print (dd)

##extracting rows now
exp <- subset(data, Ozone > 31 & Temp > 90, select = c("Solar.R"))
ans <- mean(data.matrix(exp))
print (ans)

##mean of temp, when month is equal to six
aki <-subset(data, Month==6, select = c("Temp"))
xyz <- mean(data.matrix(aki))
print (xyz)

##finding maximux value in month of may
max1 <- subset(data, Month==5, select = c("Ozone"))
w <- max(data.matrix(max1), na.rm = TRUE)
print (w)
