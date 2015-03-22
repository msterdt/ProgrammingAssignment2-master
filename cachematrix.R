## Assignment 2
## https://class.coursera.org/rprog-012/human_grading/view/courses/973493/assessments/3/submissions

## makeCacheMatrix: This function creates a special "matrix" object 
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        inv <<- solve(x)  ## cache the inverse of the matrix
}


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 
        message("Checking cache...")
        if(exists("inv")) {
                message("Found it in cache...")
                return(inv)   ## inv of the matrix was already cached.  Yeah!
         } else { 
                 message("not found in cache, inv now...")
                 localInv <- solve(x) ## not cached, so do it now
                 return(localInv)
                }
        message("Finished.")       
}
