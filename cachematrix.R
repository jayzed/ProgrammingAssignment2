## Put comments here that give an overall description of what your
## functions do

## Makes a set list of functions that
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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
