means <- function() {
  library(datasets)
  data(iris)
  sub <- subset(iris, Species == 'virginica')
  septalMean <- mean(sub$Sepal.Length)
  print(septalMean)
  someMeans <-apply(iris[, 1:4], 2, mean)
  print(someMeans)
}