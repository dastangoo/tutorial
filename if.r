1 == 1
1 < 1
1 > 1
1 <= 1
1 >= 1
1 != 1
toCheck <- 1
if(toCheck == 1)
{
  print("Hello")
}
toCheck <- 0

check.bool <- function(x)
{
  if(x == 1)
  {
    print("Hello")
  } else
  {
    print("Goodbye")
  }
}
check.bool(1)
check.bool(0)
check.bool("k")
check.bool(TRUE)


check.bool <- function(x)
{
  if(x == 1)
  {
    # anything after this symbol is a comment
    # ignored by computer
    print("Hello")
    
  } else if(x == 0)
  {
    print("Goodbye")
  } else 
  {
    print("Confused")
  }
}
check.bool(1)
check.bool(0)
check.bool("k")
