fileName <- "getdata-data-gov_NGAP.xlsx"
if (!file.exists(fileName)) {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
  download.file(fileUrl, destfile=fileName, method="curl");
  dateDownloaded <- date();
} else {
  print("file already there")
}

# run install.packages("xlsx") first
library(xlsx)

cols <- 7:15
data <- read.xlsx(file=fileName, sheetIndex=1, colIndex=cols, startRow=18, endRow=23, header=TRUE)

# print(head(data))
print(sum(data$Zip*data$Ext,na.rm=T)) #36534720