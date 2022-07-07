write.csv(mtcars, file = "my_example.csv")
ex <- read.csv("my_example.csv")
head(ex)
library(readxl)

excel_sheets("Sample-Sales-Data.xlsx")
df <- read_excel("Sample-Sales-Data.xlsx", sheet = "Sheet1")
head(df)

entire.workbook <- lapply(excel_sheets("Sample-Sales-Data.xlsx"),
                          read_excel, path = "Sample-Sales-Data.xlsx")
entire.workbook

library(xlsx)
head(mtcars)

write.xlsx(mtcars, "output_example.xlsx")

read_excel("output_example.xlsx")

# install.packages("RODBC")
library("RODBC")
library(rvest)
demo(package = "rvest")

demo(package = "rvest", topic="tripadvisor")
