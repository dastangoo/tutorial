theList <- list(A = matrix(1:9, nrow = 3), B = 1:5, C = matrix(1:4, 2), D = 2) 
lapply(theList, sum) 
sapply(theList, sum)

theNames <- c("Goerge", "Barack", "Donald")
lapply(theNames, nchar)
sapply(theNames, nchar)
