head(gdp)
require(reshape2)
gdpCast <- dcast(Year ~ Country, data=gdp[, c("Country", "Year", "PerCapGDP")],
                 value.var="PerCapGDP")
head(gdpCast)
gdpTS <- ts(data=gdpCast[, -1], start=min(gdpCast$Year), end=max(gdpCast$Year))
plot(gdpTS, plot.type = "single", col=1:8)
legend("topleft", legend = colnames(gdpTS), ncol = 2, lty = 1, col = 1:8, cex = .9)
