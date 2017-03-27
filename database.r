require(RODBC)
db <- odbcConnect("QV Trainig")

ordersTable <-sqlQuery(db, "SELECT * FROM orders", stringsAsFactor = FALSE)
detailsTable <-sqlQuery(db, "SELECT * FROm [Order Details]", stringsAsFactor = FALSE)
longQuery <- "SELECT * FROM Orders, [Order Details] WHERE Orders.OrderID = [Order Details].OrderID"
longQuery
joinedTable <- sqlQuery(db, longQuery, stingsAsFactor = FALSE)
joinedTable