house1 <- lm(ValuePerSqFt ~ Units * SqFt + Boro, housing)
house2 <- lm(ValuePerSqFt ~ Units + SqFt * Boro, housing)
house3 <- lm(ValuePerSqFt ~ Units + SqFt * Boro + Class, housing)
house4 <- lm(ValuePerSqFt ~ Units + SqFt * Boro + SqFt * Class, housing)
house5 <- lm(ValuePerSqFt ~ Units + Boro + Class, housing)
multiplot(house1, house2, house3, house4, house5,pointSize = 2)
anova(house1, house2, house3, house4, house5)
AIC(house1, house2, house3, house4, house5)
BIC(house1, house2, house3, house4, house5)
housing$HighValue <- housing$ValuePerSqFt >= 150
head(housing)
high1 <- glm(HighValue ~ Units + SqFt + Boro, housing, family = binomial(link="logit"))
high2 <- glm(HighValue ~ Units * SqFt + Boro, housing, family = binomial(link="logit"))
high3 <- glm(HighValue ~ Units + SqFt * Boro + Class, housing, family = binomial(link="logit"))
high4 <- glm(HighValue ~ Units + SqFt * Boro + SqFt * Class, housing, family = binomial(link="logit"))
high5 <- glm(HighValue ~ Boro + Class, housing, family = binomial(link="logit"))
anova(high1, high2, high3, high4, high5)
AIC(high1, high2, high3, high4, high5)
BIC(high1, high2, high3, high4, high5)
