library(RODBC)
library(odbc)
library(DBI)
library(dbplyr)
library(tidyverse)
library(RMySQL)

if (Sys.info()['user'] == "root") {
  
  config_path <- "/opt/shiny-server/samples/sample-apps/config/config.yml"
  
} else {
  
  config_path <- "http://10.10.70.65:3838/sample-apps/config/config.yml"
  
}


dw <- config::get(value = "datawarehouse", file = config_path)

conn <- dbConnect(RMySQL::MySQL(),
                  dbname= dw$database,
                  host= dw$server,
                  port= dw$port,
                  user= dw$uid,
                  password= dw$pwd)

