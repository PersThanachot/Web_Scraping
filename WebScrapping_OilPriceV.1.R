library(tidyverse)
library(XML)
library(rvest)

Oil65 <- read_html('https://www.bangchak.co.th/th/oilprice/historical')
Oil64 <- read_html('https://www.bangchak.co.th/th/oilprice/historical?year=2021')
Oil63 <- read_html('https://www.bangchak.co.th/th/oilprice/historical?year=2020')
Oil62 <- read_html('https://www.bangchak.co.th/th/oilprice/historical?year=2019')
Oil61 <- read_html('https://www.bangchak.co.th/th/oilprice/historical?year=2018')
Oil60 <- read_html('https://www.bangchak.co.th/th/oilprice/historical?year=2017')
Oil59 <- read_html('https://www.bangchak.co.th/th/oilprice/historical?year=2016')
Oil58 <- read_html('https://www.bangchak.co.th/th/oilprice/historical?year=2015')

# https://www.bangchak.co.th/th/oilprice/historical?year=2021

tables65 <- Oil65 %>% html_table()
OilPrice65 <- data.frame(tables65[1])
OilPrice65 <- OilPrice65[-c(1),]

tables64 <- Oil64 %>% html_table()
OilPrice64 <- data.frame(tables64[1])
OilPrice64 <- OilPrice64[-c(1),]

tables63 <- Oil63 %>% html_table()
OilPrice63 <- data.frame(tables63[1])
OilPrice63 <- OilPrice63[-c(1),]

tables62 <- Oil62 %>% html_table()
OilPrice62 <- data.frame(tables62[1])
OilPrice62 <- OilPrice62[-c(1),]

tables61 <- Oil61 %>% html_table()
OilPrice61 <- data.frame(tables61[1])
OilPrice61 <- OilPrice61[-c(1),]

tables60 <- Oil60 %>% html_table()
OilPrice60 <- data.frame(tables60[1])
OilPrice60 <- OilPrice60[-c(1),]

tables59 <- Oil59 %>% html_table()
OilPrice59 <- data.frame(tables59[1])
OilPrice59 <- OilPrice59[-c(1),]

tables58 <- Oil58 %>% html_table()
OilPrice58 <- data.frame(tables58[1])
OilPrice58 <- OilPrice58[-c(1),]

OilPrice <- rbind(OilPrice65,
                  OilPrice64,
                  OilPrice63,
                  OilPrice62,
                  OilPrice61,
                  OilPrice60,
                  OilPrice59,
                  OilPrice58)

names(OilPrice)[1] <- 'Date'
names(OilPrice)[2] <- 'Premium_Diesel_B7'
names(OilPrice)[3] <- 'Diesel_B7'
names(OilPrice)[4] <- 'Diesel'
names(OilPrice)[5] <- 'Diesel_B20'
names(OilPrice)[6] <- 'E85'
names(OilPrice)[7] <- 'E20'
names(OilPrice)[8] <- '91'
names(OilPrice)[9] <- '95'
names(OilPrice)[10] <- 'NGV'
