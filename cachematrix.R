 X...These.functions.cache.the.inverse.of.the.matrix.
                                                                                
                           ## Creates special matrix that can cache its inverse.
                                     makeCacheMatrix <- function(x = matrix()) {
                                                                         m<-NULL
                                                               set<-function(y){
                                                                           x<<-y
                                                                        m<<-NULL
                                                                               }
                                                               get<-function() x
                                          setmatrix<-function(solve) m<<- solve
                                                        getmatrix<-function() m
                                                                   list(set=set
                                                                        get=get
                                                            setmatrix=setmatrix
                                                           getmatrix=getmatrix)
                                                                              }
                        ## Computes inverse matrix above. If inverse calculated
                                                                               
                                    then should retrieve inverse from cache.   
                                              cacheSolve <- function(x=matrix()
                                                                         ...) {
                                                               m<-x$getmatrix()
                                                               if(!is.null(m)){
                                                   message(getting cached data)
                                                                      return(m)
                                                                              }
                                                                matrix<-x$get()
                                                                m<-solve(matrix
                                                                          ...)s
                                                                 x$setmatrix(m)
                                                                              m
                                                                              }
                                                                   ##  WORKS...

