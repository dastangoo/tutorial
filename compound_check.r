a <- c(1, 1, 0, 1)
b <- c(2, 1, 0, 1)
ifelse(a == 1 & b == 1, "Yes", "No")
ifelse(a == 1 && b == 1, "Yes", "No")

a <- 1
b <- 2
if(a == 0 && b == 3)
{
  print("Hello")
}

x <- 1
y <- 2

if(x == 1 | y == 2)
{
  print("Hello")
}
ifelse(b == 1, "Hi", ifelse(b == 0, "Hello", "Goodbye"))
