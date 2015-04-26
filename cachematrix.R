## Put comments here that give an overall description of what your


## makeCacheMatrix is a function which creates a list of functions as below
## "set" to set the matrix
## "get" to get the matrix
## "setinverse" to set the inverse of a matrix
## "getinverse" top get the inverse of a matrix



makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set <- function(y){
      x<-y
      inverse <<- NULL
}
get <- function() x
setinversemtrx <- function(inversemtrx) inverse <<- inversemtrx
getinversemtrx <- function() inverse
list(set=set, get=get, setinversemtrx=setinversemtrx, getinversemtrx=getinversemtrx)

}


## cacheSolve is a function whihc checkis if a inverse matrix exists, 
## if so it skips the computation and returns from the stored cache

cacheSolve <- function(x, ...) {
        inverse <- x$getinversemtrx()
        if(!is.null(inverse)){
              message("getting cache data")
              return(inverse)
        }
        mtrx <- x$get()
        inverse<-solve(mtrx)
        x$setinversemtrx(inverse)
        inverse
}
