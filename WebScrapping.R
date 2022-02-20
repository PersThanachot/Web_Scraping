library(tidyverse)
library(XML)
library(rvest)

Oil <- read_html('https://www.bangchak.co.th/th/oilprice/historical')

tables <- Oil %>% html_table()
OilPrice <- data.frame(tables[1])

