data("tips", package = "reshape2")
tips
head(tips)
tail(tips)
tips$sex
unique(tips$sex)
head(tips)
unique(tips$day)
t.test(tips$tip, alternative = "two.sided", mu = 2.5)

randT <- rt(30000, df = NROW(tips) - 1)
head(randT)
tipTTest <- t.test(tips$tip, alternative = "two.sided", mu = 2.5)
require(ggplot2)
ggplot(data.frame(x = randT)) + 
  geom_density(aes(x = x), fill = "grey", color = "grey") +
  geom_vline(xintercept = tipTTest$statistic) +
  geom_vline(xintercept = mean(randT) + c(-2, 2) * sd(randT), linetype = 2)
 
t.test(tips$tip, alternative = "greater", mu = 2.5)
aggregate(tip ~ sex, data = tips, mean)
aggregate(tip ~ sex, data = tips, var)
shapiro.test(tips$tip)
shapiro.test(tips$tip[tips$sex == "Female"])
ggplot(tips, aes(x = tip, fill = sex)) + geom_histogram(binwidth = .5, alpha = 1/2)
ansari.test(tip ~ sex, tips)
t.test(tip ~ sex, data = tips, var.equal = TRUE)
require(plyr)
tipSummary <- ddply(tips, "sex", summarize,
                    tip.mean = mean(tip), tip.sd = sd(tip),
                    Lower = tip.mean - 2 * tip.sd/sqrt(NROW(tip)),
                    Upper = tip.mean + 2 * tip.sd/sqrt(NROW(tip)))
tipSummary

ggplot(tipSummary, aes(x=tip.mean, y = sex)) + geom_point() + 
  geom_errorbarh(aes(xmin = Lower, xmax = Upper), height = .2)
require(UsingR)
install.packages("UsingR")
head(father.son)
t.test(father.son$fheight, father.son$sheight, paired = TRUE)
tipAnova <- aov(tip ~ day - 1, tips)
head(tipAnova)
tipIntercept <- aov(tip ~ day, tips)
head(tipAnova)
tipAnova$coefficients
tipIntercept$coefficients
summary(tipAnova)
require(plyr)
require(ggplot2)
head(tips)
tipsByDay <- ddply(tips, 
                   "day",
                   summarize,
                   tip.mean = mean(tip),
                   tip.sd = sd(tip),
                   Length = NROW(tip),
                   tfrac = qt(p = .90, df = Length - 1),
                   Lower = tip.mean - tfrac*tip.sd/sqrt(Length),
                   Upper = tip.mean + tfrac*tip.sd/sqrt(Length))
tipsByDay
ggplot(tipsByDay, aes(x = tip.mean, y = day)) + geom_point() + 
  geom_errorbarh(aes(xmin = Lower, xmax = Upper), height = .3 )