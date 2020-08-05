library(httr)
library(dplyr)

url <- "https://pvpoke.com/data/gamemaster.json"
pokedex <- GET(url = url) %>%
    content(as = "text")

save(pokedex, file = "./data/raw-data/pokedex.txt")
