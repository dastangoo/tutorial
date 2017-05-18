housing <- read.table("data/housing.csv", sep = ",", header=TRUE, stringsAsFactors = FALSE)
names(housing)<- c("Neighborhood", "Class", "Units", "YearBuilt", "SqFt", "Income", "IncomePerSqFt", "Expense", "ExpensePerSqFt", "NetIncome", "Value", "ValuePerSqFt", "Boro")
house1 <- lm(ValuePerSqFt ~ Units + SqFt + Boro , data = housing)
summary(house1)
coefplot(house1)
head(fortify(house1))
h1 <- ggplot(aes(x=.fitted, y=.resid), data=house1) + geom_point() +
  geom_hline(yintercept = 0) + geom_smooth(se=FALSE) +
  labs(x="Fitted Values", y="Residuals")
h1
h1 + geom_point(aes(color=Boro))
plot(house1, which = 2)
ggplot(house1, aes(sample=.stdresid)) + stat_qq() + geom_abline()
ggplot(house1, aes(x=.resid)) + geom_histogram()
