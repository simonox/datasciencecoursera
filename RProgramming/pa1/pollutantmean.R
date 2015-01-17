pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  files <- list.files(directory, full.names=TRUE)
  dataframe <- read.csv(files[1])
  
  ## I have to read all files because I cannot be sure that the ID in the files
  ## matches exactly the ID in the file name
  for (i in 2:length(files)) { 
    dataframe <- rbind(dataframe, read.csv(files[i]))
  }
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  dat_subset <- dataframe[which(dataframe[, "ID"] %in% id),]
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  ## pollutantValues = dataframe[, pollutant]
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  mean(dat_subset[, pollutant], na.rm=TRUE)
  
}