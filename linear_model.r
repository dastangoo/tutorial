require(UsingR)
head(father.son)
require(ggplot2)
ggplot(father.son, aes(x = fheight, y = sheight)) + geom_point() +
  geom_smooth(method = "lm") + labs(x = "Fathers", y = "Sons")

heightsLM <- lm(sheight ~ fheight, data = father.son)
heightsLM

summary(heightsLM)

data(tips, package = "reshape2")
head(tips)
tipsAnova <- aov(tip ~ day - 1, data = tips)
head(tipsAnova)

tipsLM <- lm(tip ~ day - 1, data = tips)
summary(tipsAnova)
summary(tipsLM)
