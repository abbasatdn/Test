stock.prices <- c(23,27,23,21,34)
stock.prices
names(stock.prices) <- c("Mon", "Tue", "Wed", "Thu", "Fri")
stock.prices
stock.prices["Mon"]
mean(stock.prices)
over.23 <- stock.prices > 23
over.23
stock.prices[over.23]
max(stock.prices)

mat <- matrix(sample.int(100,15), nrow = 5)
######### Matrices ###############
v <- 1:10
matrix(v, nrow = 2,byrow = TRUE)
matrix(1:12, nrow = 4, byrow = FALSE)


goog <- c(450, 451, 452,445,468)
mfst <- c(230, 231, 232,233, 220)
stocks <- c(goog, mfst)
stocks

stock.matrix <- matrix(stocks, byrow = T, nrow = 2)
stock.matrix
days <- c("Mon", "Tue", "Wed", "Thu", "Fri")
st.names <- c("GOOG","MFST")

colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names
stock.matrix


mat <- matrix(1:25, byrow = T, nrow = 5)
mat > mean(mat)
mat*mat
mat %*% mat 

## 4
stock.matrix

colSums(stock.matrix)
rowSums(stock.matrix)

rowMeans(stock.matrix)

FB <- c(111,112,113,120,145)
tech.stocks <- rbind(stock.matrix, FB)
tech.stocks
avg <- rowMeans(tech.stocks)
avg
tech.stocks <- cbind(tech.stocks,avg)
tech.stocks

## 5
mat <- matrix(1:50, byrow = T, nrow = 5)
mat
mat[1,]
mat[,1]
mat[1:3,]
mat[1:2,1:3]
mat[2:3,c(3,5)]

##### ^
animal <- c("d", "c","d","c","c")
id <- c(1,2,3,4,5)
factor(animal)
fact.ani <- factor(animal)
fact.ani

ord.cat <- c("cold","med","hot")
temps <- c("cold","med","hot","hot","hot","cold","med")
temps
fact.temp <- factor(temps, ordered = T, levels = c(
  "cold","med","hot"))
fact.temp
summary(fact.temp)
summary(temps)

##### Exercises
A <- c(1,2,3)
B <- c (4,5,6)
rbind(A,B)

mat <- matrix(1:9, nrow = 3, byrow = T)
mat
is.matrix(mat)

mat2 <- matrix(1:25, byrow = T, nrow = 5)
mat2
mat2[2:3,2:3]

matrix(runif(20), nrow = 4)
