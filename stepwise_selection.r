head(housing)
nullModel <- lm(ValuePerSqFt ~ 1, data=housing)
fullModel <- lm(ValuePerSqFt ~ Units + SqFt * Boro + Boro * Class, housing)
houseStep <- step(nullModel, scope=list(lower=nullModel, upper = fullModel), direction = "both")
houseStep
