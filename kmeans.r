wine <- read.table("data/wine.csv", header = TRUE, sep = ",")
head(wine)
wineTrain <- wine[, which(names(wine) != "Cultivar")]
set.seed(278613)
wineK3 <- kmeans(x=wineTrain, centers=3)
wineK3
require(useful)
plot(wineK3,data = wineTrain)

set.seed(278613)

wineK3N25 <- kmeans(wineTrain, centers = 3, nstart = 25)
wineK3$size
wineK3N25$size
wineBest <- FitKMeans(wineTrain, max.clusters = 20, nstart = 25, seed = 278613)
wineBest
PlotHartigan(wineBest)
table(wine$Cultivar, wineK3N25$cluster)
plot(table(wine$Cultivar, wineK3N25$cluster),
     main="Confusion Matrix for Wine clustering",
     xlab = "cultivar", ylab = "Cluster")
require(cluster)
theGap <- clusGap(wineTrain, FUNcluster = pam, K.max = 20)
gapDF <- as.data.frame(theGap$Tab)
head(gapDF)
ggplot(gapDF, aes(x=1:nrow(gapDF))) + 
  geom_line(aes(y=logW), color="blue") + 
  geom_point(aes(y=logW), color="blue") + 
  geom_line(aes(y=E.logW), color="green") +
  geom_point(aes(y=E.logW), color="green") +
  labs(x="Number of Clusters")