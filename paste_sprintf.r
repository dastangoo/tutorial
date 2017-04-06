paste("Hello", "James", "and others.")
paste("Hello", "James", "and others.", sep = "/")

paste(c("Hello", "Hey", "Howdy"), c("James", "Cameron", "Bob"))
paste("Hello", c("James", "Cameron", "Bob"))
paste("Hello", c("James", "Cameron", "Bob"), c("Goodbye", "Seeya"))
vectorOfText <- c("Hello", "everyone", "out there", ".")
paste(vectorOfText, collapse = " ")

person <- "James"
partySize <- 8
waitTime <- 25

paste("Hello ", person, ", your party of ", partySize, 
      " will be seated in ", waitTime, " minutes.", sep = "" )

sprintf("Hello, %s, your party of %s will be seated in %s minutes.", person, partySize, waitTime)
