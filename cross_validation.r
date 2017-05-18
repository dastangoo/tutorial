require(boot)
houseG1 <- glm(ValuePerSqFt ~ Units + SqFt + Boro, data = housing, 
               family=gaussian(link="identity"))
houseCV1 <- cv.glm(housing, houseG1, K=5)
houseCV1$delta
houseG2 <- glm(ValuePerSqFt ~ Units * SqFt + Boro, data = housing)
houseG3 <- glm(ValuePerSqFt ~ Units + SqFt * Boro + Class, data = housing)
houseG4 <- glm(ValuePerSqFt ~ Units + SqFt * Boro + SqFt * Class, data = housing)
houseG5 <- glm(ValuePerSqFt ~ Boro + Class, data = housing)
houseCV2 <- cv.glm(housing, houseG2, K=5)
houseCV3 <- cv.glm(housing, houseG3, K=5)
houseCV4 <- cv.glm(housing, houseG4, K=5)
houseCV5 <- cv.glm(housing, houseG5, K=5)

cvResults <- as.data.frame(rbind(houseCV1$delta, houseCV2$delta, houseCV3$delta,
                                 houseCV4$delta, houseCV5$delta))
names(cvResults) <- c("Error", "Adjusted.Error")
cvResults$Model <- sprintf("houseG%s", 1:5)
cvResults
cvAnova <- anova(houseG1, houseG2, houseG3, houseG4, houseG5)
cvIAC <- AIC(houseG1, houseG2, houseG3, houseG4, houseG5)
cvAic <- AIC(houseG1, houseG2, houseG3, houseG4, houseG5)
cvBic <- BIC(houseG1, houseG2, houseG3, houseG4, houseG5)
head(cvResults)
head(cvAnova$`Resid. Dev`)
cvResults$ANOVA <- cvAnova$`Resid. Dev`
cvResults$AIC <- cvAic$AIC
cvResults
