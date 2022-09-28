install.packages("RMySQL")
library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'ps2[quina]', host = 'localhost')
dbListTables(con) 
myQuery <- "SELECT * FROM `modul1_quina`";
df <- dbGetQuery(con, myQuery)

library(dplyr)
df<-filter(df, JenisKelamin == "L")
print(df)