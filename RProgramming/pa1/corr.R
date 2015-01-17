corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  source("complete.R")
  complete <- complete(directory)
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  # subset the data.frame according to the threshold for the nobs
  data <- complete[complete$nobs > threshold, ]
  result <- numeric(0)
  
  # for each data point, read CSV, calculate the cor and append to the result
  for(id in data$id) {
    dataFrame <- read.csv(paste(directory, "/", sprintf("%03d", id), ".csv", sep=''))
    
    vectorOfValidRows <- !is.na(dataFrame$sulfate) & !is.na(dataFrame$nitrate)
    validRows <- dataFrame[vectorOfValidRows, ]  
    
    result <- c(result, cor(validRows$sulfate, validRows$nitrate))
  }
  ## Return 
  result
}