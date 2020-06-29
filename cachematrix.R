## as in the example given
# This function
# 1. set the value of vector equal to matrix
# 2. get the velue of the matrix
# 3. set the value of inverse matrix
# 4. get the value of inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## this function computes inverse matrix
# unless it's already calculated
# then it gives cached value and print message

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m     
   ## Return a matrix that is the inverse of 'x'
}
