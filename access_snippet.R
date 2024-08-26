#### DATABASE ACCESS SNIPPET -----------

#This snippet allows the script to run either on the R server or locally. The function "connect_to_tc()" will run with the correct directory set for the SQL access config and code.

if (Sys.info()['user'] == "root") {
  
  access_path <- "/opt/shiny-server/samples/sample-apps/config/db_access_code.R"
  google_json <- "/opt/shiny-server/samples/sample-apps/config/adminproll-99df3593c401.json"
  
} else {
  
  access_path <- "http://10.10.70.65:3838/sample-apps/config/db_access_code.R"
  google_json <- "http://10.10.70.65:3838/sample-apps/config/adminproll-99df3593c401.json"
  
}

connect_to_tc <- function() {
  
  source(access_path)
  
}