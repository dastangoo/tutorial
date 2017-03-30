theMatrix <- matrix(1:9, nrow = 3)
theMatrix
apply(theMatrix, MARGIN = 2, sum)
apply(theMatrix, MARGIN = 1, sum)
colSums(theMatrix)
rowSums(theMatrix)
theMatrix[2][1] <- NA
theMatrix
rowSums(theMatrix)
apply(theMatrix, 1, sum, na.rm = TRUE)
rowSums(theMatrix)
rowSums(theMatrix, na.rm = TRUE)
