library(readxl)
data <- read_xlsx("medaile.xlsx", skip=1)

names(data) <- c("rok", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16")

