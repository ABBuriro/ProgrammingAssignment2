## Put comments here that give an overall description of what your
## functions do

## The following two functions are to create a matrix, compute its inverse and then cache
# its inverse, which will be retrieved if the matrix is unchanged 


#The function "makeCacheMatrix" contains a list of functions to set the value of the
# matrix, get the value of the matrix, 
# set the inverse of the matrix, and gets the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
  MatVar <- NULL
  set <- function(y){
    x <<- y
    MatVar <<- NULL          # Generates a matrix
  }
  get <- function() x     # 
  setInv <- function(solve) MatVar <<- solve  # Sets the inverse
  getInv <- function() MatVar                 # Gets the inverse
  list(set = set, get = get,
       setInv = setInv, getInv = getInv)
  

}


##This function computes the inverse of a matrix returned by the above function 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  MatVar <- x$getinv()                      # gets the inverse from the list
  if(is.null(MatVar)){
    message("getting cache matrix/data")    # Retrieve
    return(MatVar)
  }
  data <- x$get()   
  MatVar <- solve(data, ...)                # computing the inverse of the matrix
  X$setInv(MatVar)                          # placing the inverse in the list
  MatVar
  
}
