## Put comments here that give an overall description of what your
## functions do

## function will set and get matrix value, set and get inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
inverse1 <- NULL
set <- function(y){
	x <<- y
	inverse1 <<- NULL
}
get <- function() x
setinverse <- function(inverse) inverse1<<- inverse
getinverse <- function() inverse1
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## check if inverse computed, if so skip calc, if no do calc and set value

cacheSolve <- function(x, ...) {
 inverse1 <- x$getinverse()
 if(!is.null(invserse1)) {
 	message("get cached data")
 	return(inverse1)
 }
 data <- x$get()
 inverse1 <- solve(data)
 x$setinverse(inverse1)
 inverse1
}
