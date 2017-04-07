head(housing)
house1 <- lm(ValuePerSqFt ~ Units + SqFt + Boro, data = housing)
head(house1)
summary(house1)

names(housing) <- c("something","Neighborhood", "Class", "Units", "YearBuilt", "SqFt", 
                    "Income", "IncomePerSqFt", "ExpensePerSqFt",
                    "NetIncome", "Value", "ValuePerSqFt", "Boro")
head(housing, 5)
head(model.matrix(ValuePerSqFt ~ Boro, data = housing))
house1$coefficients

coef(house1)
coefficients(house1)
summary(house1)

require(coefplot)
coefplot(house1)

head(housing, 5)
house2 <- lm(ValuePerSqFt ~ Units*SqFt + Boro, data = housing)
coefplot(house2)

head(model.matrix(ValuePerSqFt ~ Units * SqFt, data = housing))
head(model.matrix(ValuePerSqFt ~ Units:SqFt, data = housing))
house3 <- lm(ValuePerSqFt ~ Units:SqFt + Boro, data = housing)
coefplot(house3)
house4 <- lm(ValuePerSqFt ~ SqFt * Units * Income, housing)
house4$coefficients
house5 <- lm(ValuePerSqFt ~ Class * Boro, housing)
house5$coefficients
house5$coefficients
house6 <- lm(ValuePerSqFt ~ I(SqFt/Units) + Boro, housing)
house6$coefficients
house7 <- lm(ValuePerSqFt ~ (Units + SqFt)^2, housing)
house7$coefficients
house8 <- lm(ValuePerSqFt ~ Units * SqFt, housing)
house8$coefficients
house9 <- lm(ValuePerSqFt ~ I(Units + SqFt) ^ 2, housing)
house9$coefficients
multiplot(house1, house2, house3)
