## 2 functions below. One that creates a special matrix object to store
## the inverse. And the second that solves the inverse if the result isn't cached.

## Constructs special matrix object
## Returns a list of functions that
## 1. Set the matrix
## 2. Get the matrix
## 3. Set the inverse of the matrix
## 4. Get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  ## Sets inverse to null
  inverse <- NULL
  
  ## 1. Set the matrix
  set <- function(y) {
    ## Sets y to replace x
    x <<- y
    ## Sets inverse to null again
    inverse <<- NULL
  }
  
  ## 2. Get the matrix
  get <- function() x
  
  ## 3. Sets the inverse
  setInverse <- function(newInverse) inverse <<- newInverse
  
  ## 4. Gets the inverse
  getInverse <- function() inverse
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Takes as input the special "Matrix" object
## If the inverse is not solved yet (cached) calculate it
## If the inverse is already solved, return it without calculating a second time.

cacheSolve <- function(x, ...) {
  ## Get the inverse of the object
  inverse <- x$getInverse()
  
  ## See if inverse is cached
  if(!is.null(inverse)) {
    ## Return cached inverse
    message("getting cached data")
    return(inverse)
  }
  
  ## No inverse is cached
  else {
    ## Get the matrix
    m <- x$get()
    
    ## Calculate inverse
    inverse <- solve(m)
    
    ## Set inverse to cache it
    x$setInverse(inverse)
    
    ## Return a matrix that is the inverse of 'x'
    inverse
  }
}
