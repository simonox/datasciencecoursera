
fileName <- "getdata-fsspid.csv"
if (!file.exists(fileName)) {
  fileUrl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
  download.file(fileUrl, destfile=fileName, method="curl", mode="w");
  dateDownloaded <- date();
} else {
  print("file already there")
}
#install.packages("data.table")
library(data.table)
DT <- fread(input=fileName, sep=",")

system.time(DT[,mean(pwgtp15),by=SEX])
system.time(tapply(DT$pwgtp15,DT$SEX,mean))
system.time(mean(DT$pwgtp15,by=DT$SEX))
system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))
system.time(mean(DT[DT$SEX==1,]$pwgtp15))  
system.time(mean(DT[DT$SEX==2,]$pwgtp15))
