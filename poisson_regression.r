ggplot(acs, aes(x=NumChildren)) + geom_histogram(binwidth = 1)
children1 <- glm(NumChildren ~ FamilyIncome + FamilyType + OwnRent, 
                 data = acs, family = poisson(link="log"))
summary(children1)
coefplot(children1)
z <- (acs$NumChildren - children1$fitted.values)/
  sqrt(children1$fitted.values)
sum(z^2)/children1$df.residual
pchisq(sum(z^2), df=children1$df.residual)
children2 <- glm(NumChildren ~ FamilyIncome + FamilyType + OwnRent,
                 data=acs, family = quasipoisson(link="log"))
multiplot(children1, children2)
