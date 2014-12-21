## This Script calculate the Inverse Matrix, with the help of two functions: makeMatrix and cacheSolve
## In case that data exist,  data will be retrieved from Cache, if not,  it will be calculated


## makeCacheMatrix acts as a auxiliar, with setting getting capabilities similar to Object Oriented Programming
## This function isnt used directly, it is used for create an Object that will be used for cacheSolve Function.
## It holds a List with the 4 funtctions set/get thar work with the  Matrix Received and the Data that will be cached.



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



## cacheSolve is a function that receive a makeMatrix Object as argument and try to get the Inverse Matrix if it exist
## If Inverse matrix exist in Cache, it is get from cache and showed with a message 
## If Inverse Matrix doesnt exist, it is calculated and setted in the object in cache for the next time when it could be retrieved

cacheSolve <- function(x, ...) {

m<-x$getmatrix()
if(!is.null(m)){
  
  message("Data has been get from Cache")
  return(m)
}

data<-x$get()
m<-solve(data,...)
x$setmatrix(m)
m
}
