## Put comments here that give an overall description of what your
## functions do

## as in the example given
# This function
# 1. set the value of vector equal to matrix
# 2. get the velue of the matrix
# 3. set the value of inverse matrix
# 4. get the value of inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## this function computes inverse matrix
# unless it's already calculated
# then it gives cached value and print message

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i     
   ## Return a matrix that is the inverse of 'x'
}
