fileName <- "getdata-data-ss06hid.csv"
if (!file.exists(fileName)) {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
  download.file(fileUrl, destfile=fileName, method="curl");
  dateDownloaded <- date();
} else {
  print("file already there")
}
data <- read.csv(fileName)
# print(head(data))

expensiveHouses <- length(data$VAL[!is.na(data$VAL) & data$VAL==24])
print(expensiveHouses)

# I think FES violates "Tidy data has one observation per row." 