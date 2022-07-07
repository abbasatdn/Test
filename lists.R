library(dplyr)
v <- c(1,2,3)
m <- matrix(1:10, nrow = 2)
df <- mtcars
class(m)
my.list <- list(v,mat = m,df)
my.list

my.list[[2]][1,3]

my.list[[3]] %>% head()
my.list$mat

double.list <- c(my.list, my.list)
double.list
str(my.list)
