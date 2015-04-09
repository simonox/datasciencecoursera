# install.packages("XML") first

library(XML)
url <- "http://d396qusza40orc.cloudfront.net/getdata/data/restaurants.xml"
xmlFile <- xmlTreeParse(file=url,useInternal=TRUE)
rootNode <- xmlRoot(xmlFile)
zipcode <- xpathSApply(rootNode,"//zipcode",xmlValue)
codes <- length(zipcode[zipcode==21231])
print(codes) # 127