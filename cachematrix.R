## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  inverseMatrix<-NULL
  
  getMatrix<-function() x
  
  getInverseMatrix<-function() inverseMatrix
  setInverseMatrix<-function(inverse) inverseMatrix<<-inverse
  
  list(getMatrix=getMatrix, getInverseMatrix=getInverseMatrix,setInverseMatrix=setInverseMatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
	inverse<-functionListOnMatrix$getInverseMatrix()
  
	if(!is.null(inverse)){
		message("getting cached inverse matrix")
		return(inverse)
	}
	  
	originalMatrix <-functionListOnMatrix$getMatrix()
	inverse<-solve(originalMatrix)
	functionListOnMatrix$setInverseMatrix(inverse)
	inverse
}
