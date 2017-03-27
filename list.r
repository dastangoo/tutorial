list1 <- list(1, 2, 3)
list1
list2 <- list(c(1, 2, 3))
list2
list3 <- list(c(1, 2, 3), 3:7)
list3
theDF
list4 = list(theDF, 1:10)
list4
list5 <- list(theDF, 1:10, list3)
list5
names(list5)
names(list5) <- c("data.frame", "vector", "list")
names(list5)
list6 <- list(TheDataFrame=theDF, TheVector=1:10, TheList=list3)
list6
names(list6)
empyList <- vector(mode="list", length = 4)
rm(empyList)

emptyList <- vector(mode = "list", length = 4)
emptyList
emptyList[[1]] <- 5
emptyList
emptyList[[2]] <- c(1, 2, 3)

list5
list5[[1]]
names(list5)
list5["data.frame"]
list5[[1]]$Sport
list5[[1]][, "Second"]
list5[[1]][, "Second", drop = FALSE]
length(list5)
nrow(list5)


NROW(list5)
list5
list5[[4]] <- 2
list5
list5[["NewElement"]] <- 3
length(list5)
list5
names(list5)
names(list5)[4] <- c("Number")
names(list5)
