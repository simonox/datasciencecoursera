simpleLApply <- function() {
  x <- list(a = 1:12, b =rnorm(10))
  lapply(x, mean)
}

moreLApply <- function() {
  x <- list(a=1:4, b=rnorm(10), c=rnorm(20,1), d=rnorm(100,5))
  lapply(x, mean)
}

runifExample <- function() {
  x <- 1:4
  lapply(x, runif, min=0, max=10)
}

listExample <- function() {
  x <- list(a = matrix(1:4, 2,2), b=matrix(1:6,3,2))
  lapply(x, function(element) element[,1])
}