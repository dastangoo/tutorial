x <- 2
x
class(x)
is.numeric(x)

i <- 5L
i
class(i)
is.integer(i)
is.numeric(i)
class(4L)
4L * 2.8
5L / 2L
class(5L / 2L)
x <- "data"
x
class(x)
is.character(x)
y <- factor("data")
y
is.factor(y)
nchar(x)
nchar("hello")
nchar(3)
nchar(452)
nchar(y)
data1 <- as.Date("2012-06-28")
data1
rm(data1)
data1
date1 <- as.Date("2012-06-28")
date1
class(date1)
as.numeric(date1)
date2 = as.POSIXct("2012-06-28 17:54")
date2
class(date2)
is.na.POSIXlt(date2)
as.numeric(date1)
as.numeric(date2)

TRUE
FALSE
TRUE * 5
FALSE * 5
k <- TRUE
K
k
class(k)
is.logical(k)
T
T <- 7
T
rm(T)
T
class(T)
T <- 7
T
class(T)
2 == 3
2 != 3
2 < 3
2 <= 3
2 > 3
2 >= 3
"data" == "stats"
"data" < "stats"
