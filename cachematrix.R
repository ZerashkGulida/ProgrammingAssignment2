## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creates a special matrix object that can
## cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y) {
    x<<- y
    m<<- NULL
  }
  get<- function() x
  setinverse<- function(solve) m <<- solve
  getinverse<- function() m
  list(set=set, get=get,
       setinverse=setinverse,
       getinverse=getinverse)
}


## Write a short comment describing this function
## Computes the inverse of the special matrix created by
## makeCacheMatrix. If the inverse has already been calculated,
##cacheSolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<- x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<- x$getinverse()
  m<- solve(data, ...)
  x$setinverse(m)
  m
  
}
