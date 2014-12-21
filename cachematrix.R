## This script solve the inverse Matrix, makeCacheMatrix acts as a Object in Object Oriented Programming
## CacheSolve will check, if data has been calcudated will get info from cache, if not, will calculate it. 


## Set & Get the function

makeCacheMatrix <- function(x = matrix()) {
  
m<-NULL

  set<-function(y){
    x<<-y
    m<-NULL
  }

get<-function()x


setmatrix<-function(solve)
  m<<-solve
getmatrix<-function()m

list(set=set, get=get,setmatrix=setmatrix,getmatrix=getmatrix)

}



## If m is not null, will retrieve the cache data, if not, will calculate it.

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
m<-x$getmatrix()
if(!is.null(m)){
  message("Data has been get from Cache")
  return(m)
}
matrix<-x$get()
m<-solve(matrix,...)
x$setmatrix(m)
m
}
