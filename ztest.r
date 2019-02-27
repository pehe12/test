z=9
x=10
y=z+x
y

library("repmis")
testUrl="https://github.com/pehe12/test/blob/master/test.csv"
repmis::source_data(testUrl)

library(RCurl)
myfile <- getURL('https://github.com/pehe12/test/blob/master/test.csv', ssl.verifyhost=FALSE, ssl.verifypeer=FALSE)
mydat <- read.csv(textConnection(myfile), header=T)
mydat

library(data.table)
mydat <- fread('https://github.com/pehe12/test/blob/master/test.csv')
head(mydat)


test=read.csv(url('https://github.com/pehe12/test/blob/master/test.csv'))
test

close()

