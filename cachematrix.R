## Here I set the input 'x' as a matrix and after set the solved value 'a' as a null
## Next I changed each and every reference to mean to solve

makeCacheMatrix <- function(x = matrix()) {
  a<- NULL
  set<- function(y)
  {
    x<<- y
    a<<- NULL
  }  
  get <- function() x
  setInverse<- function(solve) a <<-solve
  getInverse<- function() a
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
  
}


## Here I changed mean to solve m to a

cacheSolve <- function(x, ...) {
  a<- x$getInverse()
  if(!is.null(a))
  {
    message("Getting cached data")
    return(a)
  }
  data<- x$get()
  a<- solve(data, ...)
  x$setInverse(a)
  a
}


