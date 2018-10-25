
#check for files and folders
dir('./data2')
list.files('./data2')
list.files('./data')
file.exists("./data/mtcars.csv")

#Reading from a flat file into a vector
list.files('./data2')
data= scan("./data2/hhe.txt",what="character")
head(data)
class(data)

#csv read from csv
#First create as csv file from iris data
head(iris)
write.csv(iris,"./data/iris.csv",row.names=F)
# Goto folder data and check for the file
read1= read.csv(file="./data/iris.csv",header = TRUE, sep = ",")
str(read1)
class(read1)

#CSV file from web
read_web1 = read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')
head(read_web1)

#using library
library(data.table)
read_web2 = fread("http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv")
head(read_web2)
class(read_web2)

#Import from Google Sheet
library(gsheet)
url_gsheet = "https://docs.google.com/spreadsheets/d/1QogGSuEab5SZyZIw1Q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865534"
df_gsheet = as.data.frame(gsheet2tbl(url_gsheet))
head(df_gsheet)


#Import from Excel
# read in the first worksheet from the workbook myexcel.xlsx
# first row contains variable names
library(xlsx)
library(rJava)
df_excel1 = read.xlsx("./data2/myexcel.xlsx", 1)
df_excel1
# read in the worksheet named mysheet
df_excel2a = read.xlsx("./data2/myexcel.xlsx", sheetName = "bowlers")
df_excel2a
df_excel2b = read.xlsx("./data2/myexcel.xlsx", sheetIndex = 2)
df_excel2b