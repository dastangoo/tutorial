require(plyr)
head(baseball)
baseball$sf[baseball$year < 1954] <- 0
head(baseball)
any(is.na(baseball$sf))
baseball$hbp[is.na(baseball$hbp)] <- 0
head(baseball)
any(is.na(baseball$hbp))
baseball <- baseball[baseball$ab >= 50,]
baseball$OBP <- with(baseball, (h + bb + hbp) / (ab + bb + hbp + sf))
head(baseball)
tail(baseball)

obp <- function(data)
{ 
  c(OBP = with(data, sum(h + bb + hbp) / sum(ab + bb + hbp + sf)))
}

careerOBP <- ddply(baseball, .variables = "id", obp)
head(careerOBP)
careerOBP <- careerOBP[order(careerOBP$OBP, decreasing = TRUE),]
head(careerOBP)


theList <- list(A = matrix(1:9, 3), B = 1:5, C = matrix(1:4,2), D = 2)
theList
lapply(theList, sum)
llply(theList, sum)
identical(lapply(theList, sum), llply(theList, sum))
sapply(theList, sum)
laply(theList, sum)
require(ggplot2)
head(diamonds)
aggregate(price ~ cut, diamonds, each(mean, median))

numcolwise(sum, na.rm = TRUE)(diamonds)
sapply(diamonds[, sapply(diamonds, is.numeric)], sum)
