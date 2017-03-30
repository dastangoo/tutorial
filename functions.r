say.hello <- function()
{
  print("Hello, World!")
}
say.hello()
say.hello

sprintf("hello %s", "Hamed")
sprintf("Hello %s, today is %s", "Hamed", "Thursday")


hello.person <- function(name)
{
  print(sprintf("Hello %s", name))
}
hello.person
hello.person("Hamed")

hello.person <- function(first, last)
{
  print(sprintf("Hello %s %s", first, last))
}
hello.person
hello.person("James", "Morrison")
hello.person(last = "Morrison", first = "James")
hello.person("James", last = "Morrison")
hello.person(last="Kushner", "Jared")
hello.person <- function(first, last = "Doe")
{
  print(sprintf("Hello %s %s", first, last))
}
hello.person
rm(hello.person)
hello.person
hello.person <- function(first, last = "Doe")
{
  print(sprintf("Hello %s %s", first, last))
}
hello.person
hello.person("Jared", "Kushner")
hello.person("John")
hello.person(first = "John")



hello.person <- function(first, last = "Doe")
{
  print(sprint("Hello %s %s", first, last))
}
hello.person <- function(first, last = "Doe", ...)
{
  print(sprintf("Hello %s %s", first, last))
}
hello.person
hello.person("John", extra = "Goodbye")

double.num <- function(x)
{
  x * 2
}
double.num
double.num(2)

double.num <- function(x)
{
  return (x * 2)
}
double.num(3)

double.num <- function(x)
{
  return(x * 2)
  print("Hello")
  return(17)
}
double.num(3)
double.num(5)
