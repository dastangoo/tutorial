acs <- read.table("data/acs_ny.csv", sep = ",", header = TRUE, stringsAsFactors = FALSE)
head(acs)
acs$Income <- with(acs, FamilyIncome >= 150000)
install.packages("glmnet")
require(glmnet)
require(useful)
acsX <- build.x(Income ~ NumBedrooms + NumChildren + NumPeople + NumRooms + 
                  NumUnits + NumVehicles + NumWorkers + OwnRent + YearBuilt + 
                  ElectricBill + FoodStamp + HeatingFuel + Insurance + 
                  Language -1, data=acs, contrasts = FALSE)
class(acsX)
dim(acsX)
topleft(acsX, c=6)
topright(acsX, c=6)
acsX

acsY <- build.y(Income ~ NumBedrooms + NumChildren + NumPeople + NumRooms + 
                  NumUnits + NumVehicles + NumWorkers + OwnRent + YearBuilt + 
                  ElectricBill + FoodStamp + HeatingFuel + Insurance + 
                  Language -1, data=acs)
set.seed(1863561)
ascCV1 <- cv.glmnet(x=acsX, y=acsY, family="binomial", nfolds = 5)
head(ascCV1)
ascCV1$lambda.min
ascCV1$lambda.1se
plot(ascCV1)
coef(ascCV1, s="lambda.1se")
plot(ascCV1$glmnet.fit, xvar = "lambda")
abline(v=log(c(ascCV1$lambda.min, ascCV1$lambda.1se)), lty=2)
ascCV2 <- cv.glmnet(x=acsX, y=acsY, family="binomial", nfolds = 5, alpha=0)
plot(ascCV2$glmnet.fit, xvar = "lambda")
abline(v=log(c(ascCV2$lambda.min, ascCV2$lambda.1se)), lty=2)
