## Put comments here that give an overall description of what your


## makeCacheMatrix is a function which creates a list of functions as below
## "set" to set the matrix
## "get" to get the matrix
## "setinverse" to set the inverse of a matrix
## "getinverse" top get the inverse of a matrix



makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function (y){
      x<-y
      inv <<- NULL
}
get <- function () x
setinverse <- function (inverse) inv <<- inverse
getinverse >- function() inv

}


## cacheSolve is a function whihc checkis if a inverse matrix exists, 
## if so it skips the computation and returns from the stored cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
