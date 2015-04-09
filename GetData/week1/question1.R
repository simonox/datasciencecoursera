fileName <- "getdata-data-ss06hid.csv"
if (!file.exists(fileName)) {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
  download.file(fileUrl, destfile=fileName, method="curl");
  dateDownloaded <- date();
} else {
  print("file already there")
}
data <- read.csv(fileName)
print(data)