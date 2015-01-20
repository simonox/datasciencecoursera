experimentWithLoops <- function() {
  x <- list(a = 1:12, b =rnorm(10))
  lapply(x, mean)
}