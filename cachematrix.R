## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#As is the example I'm initially creating a special "matrix" that consists of four lists (setting the value of the matrix, getting the value of the matrix, setting the inverse of the matrix and getting the inverse of the matrix)

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function (y) {
		x <<- y
		i <<- NULL
	}
	get <- function() x 
	setInverse <- function(solve) i <<- solve
	getInverse <- function() i
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

#I initially check if an inverse matrix has already been cached - it this was the case I would get the message "getting cached data", followed by the cached inverse matrix. If this was not the case the inverse is first calculated, and then cached and returned.

cacheSolve <- function(x) {
        i <- x$getInverse()
        if(!is.null(i)) {
        	message("getting cached data")
        	return(i)
        }
        
        data <- x$get ()
        i <- solve(data)
        x$setInverse(i)
        i
}


