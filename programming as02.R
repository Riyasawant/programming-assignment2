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
