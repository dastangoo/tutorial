wineH <- hclust(d=dist(wineTrain))
plot(wineH)

wineH1 <- hclust(dist(wineTrain), method = "single")
wineH2 <- hclust(dist(wineTrain), method = "complete")
wineH3 <- hclust(dist(wineTrain), method = "average")
wineH4 <- hclust(dist(wineTrain), method = "centroid")
plot(wineH1, labels = FALSE, main = "Single")
plot(wineH2, labels = FALSE, main = "Complete")
plot(wineH3, labels = FALSE, main = "Average")
plot(wineH4, labels = FALSE, main = "Centroid")

plot(wineH)
rect.hclust(wineH, k=3, border = "red")
rect.hclust(wineH, k=13, border = "blue")

plot(wineH)
rect.hclust(wineH, h=200, border = "red")
rect.hclust(wineH, h=800, border = "blue")

