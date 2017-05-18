install.packages("WDI")
require(WDI)
countries <- c("US", "CA", "GB", "CN", "JP", "SG", "IL")
indicators <- c("NY.GDP.PCAP.CD", "NY.GDP.MKTP.CD")
gdp <- WDI(country = countries, indicator = indicators, start = 1960, end = 2011)
names(gdp) <- c("iso2c", "Country", "Year", "PerCapGDP", "GDP")
head(gdp)
require(ggplot2)
require(scales)
ggplot(gdp, aes(Year, PerCapGDP, color=Country, linetype=Country)) +
  geom_line() + scale_y_continuous(label=dollar)
us <- gdp$PerCapGDP[gdp$Country == "United States"]
us <- ts(us, start=min(gdp$Year), end=max(gdp$Year))
us
plot(us, ylab="Per Capita GDP", xlab="Year")

acf(us)
pacf(us)
