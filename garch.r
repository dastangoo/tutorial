install.packages("quantmod")
require(quantmod)
att <- getSymbols("T", auto.assign = FALSE)
att <- getSymbols("T", auto.assign = FALSE)
require(xts)
head(att)
plot(att)

chartSeries(att)
addBBands()
attClose <- att$T.Close
class(attClose)
head(attClose)

require(rugarch)
attSpec <- ugarchspec(variance.model=list(model="sGARCH", garchOrder=c(1,1)), 
                      mean.model = list(armOrder = c(1,1)), 
                      distribution.model = "std")
attGarch <- ugarchfit(spec=attSpec, data=attClose)
attGarch
plot(attGarch@fit$residuals, type="l")
plot(attGarch, which = 10)
plot(attGarch)
attPred <- ugarchboot(attGarch, n.head = 50, method = c("Partial", "Full")[1])
plot(attPred, which = 2)
attLog <- diff(log(attClose)) [-1]
attLogSpec <- ugarchspec(variance.model=list(model="sGARCH", garchorder=c(1,1)), 
                         mean.model=list(armaOrder = c(1,1),
                                         distribution.model = "std"))
                         attLogGarch <- ugarchfit(spec=attLogSepc, data=attLog)
                         infocriteria(attLogGarch)