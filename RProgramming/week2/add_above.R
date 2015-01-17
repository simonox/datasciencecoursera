above10 <- function(x) {
  use <- x > 10
  x[use]
}

above <- function(x, limit = 10) {
  use <- x > limit
  x[use]
}

columnmean <- function(y, removeNA = T) {
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc) {
    means[i] <- mean(y[,i], na.rm = removeNA)
  }
  means
}


f <- function(a,b, ...) {
  a^2+b
}