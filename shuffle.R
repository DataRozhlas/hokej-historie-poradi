library(readxl)
library(jsonlite)
data <- read_xlsx("medaile.xlsx", skip=1)

names(data) <- c("rok", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16")

# získej všechny medailisty

medailisti <- c(data$`1`, data$`2`, data$`3`)

medailisti <- unique(medailisti)

# získej pořadí a vrať pole pro všechny roky

zjistiPoradi <- function(stat, data) {
vysledek <- numeric()  
  for (i in 1:nrow(data)) {
    poradi <- c(1:16)[grepl(stat, data[i,])]-1
    if (length(poradi)>0) {
      vysledek <- c(vysledek, poradi)
    } else {
      vysledek <- c(vysledek, NA)
    }
  }
return(toJSON(vysledek))
}

zjistiPoradi(paste0("Česko", "$"), data)







