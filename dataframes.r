x <- 1:10
x
y <- -4:5 
y
nchar(x)
length(x)
length(y)
q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacrosse", "Basketball", "Tennis", "Cricket", "Soccer")
theDF <- data.frame(x, y, q)
theDF
q
theDF <- data.frame(First=x, Second=y, Sport=q)
theDF
class(theDF$Sport)
theDF <- data.frame(First=x, Second=y, Sport=q, stringsAsFactors = FALSE)
theDF
class(theDF$Sport)
nrow(theDF)
ncol(theDF)
dim(theDF)
x
nrow(x)
NROW(x)
ncol(x)
NCOL(x)
names(theDF)
names(theDF)[3]
theDF
rownames(theDF)
rownames(theDF) <- c("One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten")
rownames(theDF)
theDF
rownames(theDF) <- NULL
theDF
head(theDF)
tail(theDF)
head(theDF, 7)
tail(theDF, n=7)
class(theDF)
theDF$Sport
theDF[3, 2]
theDF
theDF[3, 2:3]
theDF[c(3,5),2]
theDF[c(3,5), 2:3]
theDF[, 3]
theDF[, 2:3]
class(theDF[, 3])
theDF[, 3, drop = FALSE]
class(theDF[, 3, drop=FALSE])
theDF[2,]
class(theDF[2,])
theDF[2:4,]
theDF[, c("First", "Sport")]
theDF[, c("Sport", "First")]
theDF[, "Sport"]
theDF[, "Sport", drop=FALSE]
theDF["Sport"]
class(theDF["Sport"])
class(theDF[, "Sport"])


theDF[["Sport"]]
theDF[c("First", "Sport")]
