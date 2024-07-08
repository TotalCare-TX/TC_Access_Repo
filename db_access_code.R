library(RODBC)
library(odbc)
library(DBI)
library(dbplyr)
library(tidyverse)
library(RMySQL)

dw <- config::get(value = "datawarehouse", file = config_path)

conn <- dbConnect(RMySQL::MySQL(),
                  dbname= dw$database,
                  host= dw$server,
                  port= dw$port,
                  user= dw$uid,
                  password= dw$pwd)

