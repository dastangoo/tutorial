require(XML)
theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
bowlGame <- readHTMLTable(theURL, which = 1, header = FALSE, stringsAsFactor = FALSE)
bowlGame
class(bowlGame)
