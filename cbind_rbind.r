sport <- c("Hockey", "Baseball", "Football")
sport
league <- c("NHL", "MLB", "NFL")
league
trophy <- c("Stanely Cup", "Comissioner's Trophy", "Vince Lombardi Trophy")
trophy

sports1 <- cbind(sport, league, trophy)
sports1

sports2 <- data.frame(sport = c("Basketball", "Golf"),
                      league = c("NBA", "Golf"),
                      trophy = c("Larry O'Brien Championship Trophy", "Wanamaker Trophy"))
sports2
sports <- rbind(sports1, sports2)
sports
