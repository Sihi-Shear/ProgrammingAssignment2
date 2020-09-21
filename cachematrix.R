##WEEK-3:Peer- Graded Assignment 

##Creates a special "matrix"

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL##just change m to inv and mean to inverse in the example given in 
  #coursera
  #set the value od a matrix
set <- function(y) {
  x <<- y
  inv <<- NULL
}
#get the value of a matrix
get <- function() x
#set the value of the inverse 
setinverse <- function(inverse) inv <<- inverse
#get the value of the inverse
getinverse <- function() inv

list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
  

}


## Calculates inverse of special "matrix" created with the above function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)##solve function is used ti find inverse
  x$setinverse(inv)
  inv
  
}
