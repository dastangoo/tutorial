hello.person <- function(first, last = "Doe", ...)
{
  print(sprintf("Hello %s %s", first, last))
}
hello.person("James", "Morrison")
do.call("hello.person", args = list(first = "James", last = "Morrison"))
do.call(hello.person, args = list(first = "James", last = "Morrison"))

run.this <- function(x, func = mean)
{
  do.call(func, args = list(x))
}
run.this(1:10)
run.this(1:10, sum)
run.this(1:10, sd)
