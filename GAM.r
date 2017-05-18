load("data/credit.rdata")
require(useful)
require(ggplot2)
ggplot(credit, aes(x=CreditAmount, y=Credit)) + 
  geom_jitter(position = position_jitter(height = .2)) +
  facet_grid(CreditHistory ~ Employment) + 
  xlab("Credit Amount") + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = .5)) + 
                                  scale_x_continuous(labels=multiple)

require(mgcv)
creditGam <- gam(Credit ~ te(CreditAmount) + s(Age) + CreditHistory + Employment, data=credit,
                 family=binomial(link = "logit"))
summary(creditGam)
plot(creditGam, select = 1, se=TRUE, shade= TRUE)
