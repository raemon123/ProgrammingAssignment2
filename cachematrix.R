## assigns matrix to object so object can be inputted into the function cacheSolve
## shows a list of the matrix and its inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
	set <- function(y) {
	x <<- y
	i <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) i <<- inverse
	getinverse <- function() i
	list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## creates inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
	if (!is.null(i)) {  #if inverse is already stored in cache return it
	message("getting inverse from cached data")
	return(i)
	}

	matrix <- x$get()
	i <- solve(matrix)
	x$setinverse(i)
	i

}
