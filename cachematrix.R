# Object of makecacheMatrix is created. Function of this object then create space for x and i to store the values. 
# It then retreives value returned by subsequent function (cachesolve) in different objects. 
# 
# cacheSolve function accepts the value, and check if the variable holding cached value is empty. It then 
# accordingly solves or prints the inverse of matrix. 


# makeCacheMatrix assigns null value to x and i. It also has a list of functions that retreives the values returned 
# by cacheMean function. At the end, this function stores al the values in a list.

makeCacheMatrix <- function(x = matrix())
{
  i = NULL
  set<- function(y = matrix())
  {
    x <<- y
    i <<- NULL 
  }
  get <- function() x                        #getting the value of input matrix
  setinverse <- function(inv)                #recieving the value of inverse of matrix, from cachesolve function.
  {
    i<<- inv                                 #caching the value of inverse to  parent environment.
  }
  getinverse <- function() i                 #retrieving the cached inverse value of matrix in this object.
  list( set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
}

# cacheSolve function accpets the input value and checks for the availibility of cached value of inverse. If 
# there is no value, it begins calculating the value of inverse of input matrix. It then returns the values
# to respective functions in makecacheMatrix environment.

cacheSolve <- function(x = matrix())
{
  i <- x$getinverse()                         #retrieving and storing the value of inverse of matrix in i
  if(!is.null(i))                             #checking if there is some value.
  {
    print("cached data is being retrieved")   #printing the available value of inverse
    i
  }
  # if i is empty, values are being calculated
  
  mat <- x$get()                              #retrieving matrix
  inv <- solve(mat)                           #calculating the mean of retreived matrix
  x$setinverse(inv)                           #returning the inverse value to setinverse function.
  inv                                         #printing recently calculated value of inv
}


