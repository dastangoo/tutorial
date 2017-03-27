tomato <- read.table(file = "Tomato First.csv", header = TRUE, sep = ",")
tomato
head(tomato)
tail(tomato)
class(tomato$Tomato)
tomato <- read.table(file = "Tomato First.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
head(tomato)
class(tomato$Tomato)
