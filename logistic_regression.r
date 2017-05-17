acs <- read.table("data/acs_ny.csv", header = TRUE,  sep = ",", stringsAsFactors = FALSE)
head(acs)
acs$Income <- with(acs, FamilyIncome >= 150000)
require(ggplot2)
require(useful)
ggplot(acs, aes(x=FamilyIncome)) + geom_density(fill="grey", color="grey") +
  geom_vline(xintercept = 150000) + 
  scale_x_continuous(label=multiple.dollar, limits = c(0, 1000000))
income1 <- glm(Income ~ HouseCosts + NumWorkers + OwnRent + NumBedrooms + FamilyType,
               data = acs, family=binomial(link = "logit"))
head(income1)
head(acs)
remove(acs$INcome)
summary(income1)
require(coefplot)
coefplot(income1)
income1$coefficients
invlogit <- function(x)
{
  1/(1 + exp(-x))
}
invlogit(income1$coefficients)
