complete <- function(directory, ids = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  allCompleteCases <-  data.frame(id=character(), 
                                  nobs=numeric()) 
  
  files <- file.path(directory, paste(sprintf("%03d", as.numeric(ids)), ".csv", sep=""))

  id <- c()
  nobs <- c()
  for (i in 1:length(files)) {
    
      thisDataframe <- read.csv(files[i])

      numberOfCompleteCases <- sum(complete.cases(thisDataframe))
      if (numberOfCompleteCases > 0) {
        id <- append(id, ids[i])
        nobs <- append(nobs, numberOfCompleteCases)
      }
  }
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  allCompleteCases <- data.frame(id, nobs)
  
  ## and return
  allCompleteCases

}