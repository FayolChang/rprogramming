## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inversemat <- NULL

setMatrix <- function(x)
{
        Mat<<-x
        inversemat <- NULL
}

getMatrix <- function() x
setInverseMatrix <- function(mat)inversemat <<- mat
getInverseMatrix <- function() inversemat

list(setMatrix = setMatrix,
     getMatrix = getMatrix,
     setInverseMatrix = setInverseMatrix,
     getInverseMatrix = getInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inversemat = x$getInverseMatrix()
        if(!is.null(inversemat))
        {
                message("getting cached inversematrix")
                return(inversemat)
        }
        
        mat = x$getMatrix()
        inversemat = solve(mat,...)
        x$setInverseMatrix(inversemat)
        inversemat
        
}
