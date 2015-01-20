mtcarsQuestion <- function() {
  library(datasets)
  data(mtcars)
  print(mtcars)
  with(mtcars, tapply(mpg, cyl, mean))
}

mtcarsQuestion2 <- function () {
  library(datasets)
  data(mtcars)
  fourc = mean(mtcars$hp[mtcars$cyl==4])
  eightc = mean(mtcars$hp[mtcars$cyl==8])
  
  print(fourc)
  print(eightc)
  
  abs(fourc - eightc)
}