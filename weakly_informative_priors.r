load("data/ideo.rdata")
head(ideo)
theYears <- unique(ideo$Year)
theYears
results <- vector(mode="list", length = length(theYears))
results
names(results) <- theYears
results
for(i in theYears)
{
  results[[as.character(i)]] <- glm(Vote ~ Race + Income + Gender + Education,
                                      data=ideo, subset = Year == i,
                                      family=binomial(link = "logit"))
}
require(coefplot)
voteInfo <- multiplot(results, coefficients = "Raceblack", plot = FALSE)
head(voteInfo)
multiplot(results, coefficients = "Raceblack", secret.weapon = TRUE)
multiplot(results, coefficients = "Raceblack", secret.weapon = TRUE) + 
  coord_flip(xlim = c(-20, 10))
resultsB <- vector(mode="list", length = length(theYears))
names(resultsB) <- theYears
install.packages("arm")
for(i in theYears)
{
  resultsB[[as.character(i)]] <- arm::bayesglm(Vote ~ Race + Income + Gender + Education,
                                                  data = ideo[ideo$Year==i, ],
                                               family=binomial(link = "logit"),
                                               prior.scale=2.5,
                                               prior.df=1)
}

multiplot(resultsB, coefficients = "Raceblack", secret.weapon = TRUE)
