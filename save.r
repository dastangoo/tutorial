tomato <- read.table("Tomato First.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
tomato
head(tomato)


save(tomato, file = "tomato.rdata")
rm(tomato)
load("tomato.rdata")
tomato



n <- 20
r <- 1:10
w <- data.frame(n, r)
w
save(n, r, w, file = "multiple.rdata")
rm(n, r, w)
n
r
w
load(file = "multiple.rdata")
r
n
w
