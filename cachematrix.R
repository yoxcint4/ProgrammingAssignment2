## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function create a special matrix objects tha cached its inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
}
get <- function() x
setmatrix <- function(solve) m <<- solve
getmatrix <- function() m
list(set = set, get = get,
     setmatrix = setmatrix,
     getmatrix = getmatrix)

}


## Write a short comment describing this function
#This function compute the inverse of special matrix
#You get the x matrix and it return the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getmatrix()
    if (!is.null(m)){
        message ("getting cached data")
        return (m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setmatrix(m)
    m
}
