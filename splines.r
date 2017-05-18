data("diamonds")
diaSpline1 <- smooth.spline(x=diamonds$carat, y=diamonds$price)
diaSpline2 <- smooth.spline(x=diamonds$carat, y=diamonds$price, df=2)
diaSpline3 <- smooth.spline(x=diamonds$carat, y=diamonds$price, df=10)
diaSpline4 <- smooth.spline(x=diamonds$carat, y=diamonds$price, df=20)
diaSpline5 <- smooth.spline(x=diamonds$carat, y=diamonds$price, df=50)
diaSpline6 <- smooth.spline(x=diamonds$carat, y=diamonds$price, df=100)

get.spline.info <- function(object)
{
  data.frame(x=object$x, y=object$y, df=object$df)
}

require(plyr)
splineDF <- ldply(list(diaSpline1, diaSpline2, diaSpline3, diaSpline4, diaSpline5,
                       diaSpline6), get.spline.info)
head(splineDF)
g <- ggplot(diamonds, aes(x=carat, y=price)) + geom_point()
g + geom_line(data=splineDF, aes(x=x, y=y, color=factor(round(df, 0)), group=df)) +
  scale_color_discrete("Degrees of \nFreedom")
require(splines)
head(ns(diamonds$carat, df=1))
head(ns(diamonds$carat, df=2))
head(ns(diamonds$carat, df=3))
g + stat_smooth(method = "lm", formula=y ~ ns(x, 6), color="blue")
g + stat_smooth(method = "lm", formula=y ~ ns(x, 3), color="red")
