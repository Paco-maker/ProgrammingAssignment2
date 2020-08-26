
## makeCacheMatrix function creates a matrix that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
contrary<-NULL
set<-function(y) {
                  x<-y
                  contrary<-NULL
}
get<-function()x
setinverse<-function(inverse) contrary<-inverse
getinverse<-function() contrary
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## cacheSolve uses the returned argument of makeCacheMatrix() to get the inverse, computing the inverse matrix done before

cacheSolve <- function(x, ...) {
contrary<=x$getinverse()
if(!is.null(contrary)){
                      return(contrary)
                      }
mat<-x$get()
contrary<-solve(mat,...)
x$setinverse(contrary)
contrary
}

