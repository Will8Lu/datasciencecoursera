## Two functions are created makeCacheMatix and cacheSolve
## makeCacheMatix is to create a special matrix and cacheSolve is to compute the inverse of the special matrix

## This function creates a special "matrix" object that can cache it inverse.

makeCacheMatrix <- function(x = matrix()) {
        inverse<- NULL
        set <- function(y) {
               x<<- y
               m<<- NULL
        }
        get <- function() x
        setinverse<- function(minverse) inverse<<- minverse
        getinverse<- function() inverse
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function computes the inverse of the special "matrix" returned by previous function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inverse<- x$getinverse()
         if(!is.null(inverse)){
            message("Getting cached data")
           return(inverse)
         }
         data <- x$get()
         inverse<- solve(data, ...)
         x$setinverse(inverse)
         inverse
}
