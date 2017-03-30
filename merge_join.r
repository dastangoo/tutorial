codes <- read.table("data/countryCodes.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
codes

countries <- read.table("data/GovType.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
countries

head(codes)
head(countries)

view(countries)
View(countries)
View(codes)

countryMerged <- merge(x = codes, y = countries, by.x = "Country.name", by.y = "Country" )
head(countryMerged)
View(countryMerged)

codes <- rename(codes, c(Country.name = "Country"))
View(codes)
countryJoined <- join(x = codes, y = countries, by = "Country")
View(countryJoined)
