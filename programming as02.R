makeCacheMatrix <- function(x=matrix()) {
  inv <- NULL
  set <-function(y)
  {
      x<<-y
      inv <<-NULL
  }
  get <-function() X
  setinv <-function(inverse) inv <<-inverse
  getinv <-function() inv
  list(set=set, get=get,settinv=setinv,getinv=getinv)
  }
# This function retrieves the inverse of the matrix cached from 
##the makeCachematrix() environment

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
    m <- x$getinverse()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
  }
