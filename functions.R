add2 <- function(x,y){
  x+y
}
above10 <- function(x,n){
  use <- x>n
  x[use]
}
coulmnmean <- function(z , removeNA = TRUE){
  nc <- ncol(z)
  meannc <- numeric(nc)
  for(i in 1:nc){
    meannc[i] <- mean(z[,i] , na.rm = removeNA)
  }
  meannc
}