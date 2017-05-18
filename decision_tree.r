require(rpart)
load("data/credit.rdata")
creditTree <- rpart(Credit ~ CreditAmount + Age + CreditHistory + Employment, data=credit)
creditTree
install.packages("rpart.plot")
require(rpart.plot)
rpart.plot(creditTree, extra=4)

require(useful)
install.packages("randomForest")
require(randomForest)
creditForumula <- Credit ~ CreditHistory + Purpose + Employment + Duration + Age + CreditAmount
creditForumula
creditX <- build.x(creditForumula, data=credit)
creditY <- build.y(creditForumula, data=credit)
creditForest <- randomForest(x=creditX, y=creditY)
creditForest
