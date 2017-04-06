x <- sample(x = 1:100, size = 100, replace = TRUE)
x
mean(x)
y <- x
y[sample(x = 1:100, size = 20, replace = FALSE)] <- NA
y
mean(y)
mean(y, na.rm = TRUE)
grades <- c(95, 72, 87, 66)
weights <- c(1/2, 1/4, 1/8, 1/8)
mean(grades)
weighted.mean(x = grades, w = weights)
var(x)
mean(x)
sd(x)
sum((x - mean(x))^2)/ (length(x)-1)
sqrt(var(x))
sd(x)
y
sd(y)
sd(y, na.rm = TRUE)
sum(x)
min(x)
max(x)
sum(y)
min(y)
max(y)
summary(x)
summary(y)
quantile(x, c(.25, .75))
median(x)
quantile(x, probs = c(.1, .25, .5, .75, .9))

head(economics)
cor(economics$pce, economics$psavert)
cor(economics[, c(2, 4:6)])
econCor <- cor(economics[, c(2, 4:6)])
econMelt <- melt(econCor, varnames = c("x", "y"), value.name = "Correlation")
head(econMelt)
econMelt <- econMelt[order(econMelt$Correlation), ]

require(scales)
ggplot(econMelt, aes(x = x, y = y)) + geom_tile(aes(fill = Correlation)) +
  scale_fill_gradient2(low = muted("red"), mid = "white", high = "steelblue",
                       guide = guide_colorbar(ticks = FALSE, barheight = 10),
                       limits = c(-1,1)) + theme_minimal() + labs(x = NULL, NULL)
m <- c(9, 9, NA, 3, NA, 5, 8, 1, 10, 4)
n <- c(2, NA, 1, 6, 6, 4, 1, 1, 6, 7)
p <- c(8, 4, 3, 9, 10, NA, 3, NA, 9, 9)
q <- c(10, 10, 7, 8, 4, 2, 8, 5, 5, 2)
r <- c(1, 9, 7, 6, 5, 6, 2, 7, 9, 10)
theMat <- cbind(m, n, p, q, r)
theMat
cor(theMat)
cor(theMat, use = "everything")
cor(theMat, use = "all.obs")
cor(theMat, use = "complete.obs")
theMat
cor(theMat, use = "na.or.complete")
cor(theMat[c(1, 4, 7, 9, 10), ])
cor(theMat, use = "pairwise.complete.obs")
