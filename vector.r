x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
x
x * 3
x + 2
x - 3
x / 4
x^2
sqrt(x)
1:10
10:1
-2:3
5:-7
x <- 1:10
x
y <- -5:4
y
x + y
x - y
x * y
x / y
x^y
length(x)
length(y)
length(x + y)
x
x + c(1, 2)
x + c(1, 2, 3)
class(x)
x
is.array(x)
is.vector(x)
x
x <= 5
x
y
x > y


any(x > y)
any(x < y)
all(x>y)
q <- c("Hockey", "Footbal", "Baseball", "Curling", "Rugby", "Lacrosse", 
       "Basketball", "Tennis", "Cricket", "Soccer")

q
nchar(1)
nchar(q)
f <- 7
f

is.vector(f)
x
x[1]
x[2]

x[1:2]
x[9:10]
x[10:9]
x[-2:3]
x
x[2:]
x[c(1,4)]
c(One="a", Two="b", Three="c")
c
w<-1:3
w
names(w) <- c("a", "b", "c")
w
q
q2 <- c(q, "Hockey", "Lacrosse", "Hockey", "Water Polo", "Hockey", "Lacrosse")
q2
q2Factor <- factor(q2)
q2Factor
as.numeric(q2Factor)
z <- c(1,2, NA, 8, 3, NA, 3)
z
is.na(z)
zChar <- c("Hockey", NA, "Lacrosse")
zChar
is.na(zChar)
z <- c(1, NULL, 3)
z
d <- NULL
d
is.null(d)
