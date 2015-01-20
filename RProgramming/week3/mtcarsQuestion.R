mtcarsQuestion <- function() {
  library(datasets)
  data(mtcars)
  print(mtcars)
  with(mtcars, tapply(mpg, cyl, mean))
}