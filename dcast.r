require(reshape2)
head(airquality)

airMelt <- melt(airquality, id=c("Month", "Day"), 
                value.name = "Value", variable.name = "metric")
head(airMelt, 10)
View(airquality)

dim(airquality)
dim(airMelt)

airMelt

airCast <- dcast(airMelt, Month + Day ~ metric, value.var = "Value")
airCast
head(airCast)

airCast <- airCast[, c("Ozone", "Solar.R", "Wind", "Temp", "Month", "Day")]
head(airCast)
