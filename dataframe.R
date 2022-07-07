library(dplyr)

######## Basics #####
head(state.x77)
USPersonalExpenditure %>% head()
women %>% head()

data()
WorldPhones %>% head()

str(state.x77)

summary(state.x77)

days <- c("Mon","Tue","Wed","Thur","Fri")
temp <- c(22.2,21,23,24.3,25)
rain <- c(T,T,F,F,T)

df <- data.frame(days, temp, rain)
df
str(df)


######## Indexing #####
df[1:5,c("days","rain")]

df$days

subset(df, subset = rain==TRUE)
df %>% filter(rain == T)
subset(df, subset = temp > 23)

sorted.temp <- order(df["temp"])
sorted.temp
df[sorted.temp,]

desc.temp <- order(-df["temp"])
desc.temp
df[desc.temp,]

df[order(-df$temp),]

######## DataFrames #####
empty <- data.frame()
empty

c1 <- 1:10
c2 <- letters[1:10]
df <- data.frame(col.name.1 = c1, col.name.2 = c2)
df

write.csv(df, file = "save_df.csv",)
read.csv("save_df.csv")[,-1]

df
nrow(df)
ncol(df)
colnames(df)
rownames(df)
glimpse(df)
df
df[5,2]
df[5,"col.name.2"]

df[2,"col.name.1"] <- 99

mtcars %>% head()

mtcars["mpg"]
mtcars$mpg
mtcars[,1]
mtcars[c("mpg","cyl")] %>% head()

df2 <- data.frame(col.name.1 = 2000, col.name.2 = "new")
df2

dfnew <- rbind(df, df2)
dfnew

df$newcol = 2*df$col.name.1
df
df$newcol.copy <- df$newcol
df
df[,"newcol.copy2"] <- df$newcol
df
colnames

colnames(df) <- c(1:5)
df
colnames(df)[1] <- "New Col Name"
df

head(mtcars)
mtcars[,"mpg">20]
mtcars["mpg">20,]

mtcars[(mtcars$mpg > 20) &( mtcars$cyl == 6), c("mpg", "cyl","hp")]

subset(mtcars, mpg> 20 & cyl == 6)

is.na(mtcars)

any(is.na(df))
df[is.na(df)] <- 0


############### Exercise ############
Age <- c(22,25, 26)
Weight <- c(150,165,120)
Sex <- c("M","M","F")
rnames <- c("Sam","Frank","Amy")
df <- data.frame(Age, Weight, Sex, row.names = rnames)
df
rownames(df) <- rnames
df

is.data.frame(mtcars)
mat <- matrix(1:25,nrow = 5)
mat
data.frame(mat)
as.data.frame(mat)

df <- mtcars
head(df)
df$mpg %>% mean()

df[df$cyl == 6,]
subset(df, cyl == 6)

df$performance <- round(df$hp/df$wt,2)
df %>% head()
df["Hornet Sportabout","mpg"]

(df[df$hp>100 & df$wt > 2.5,]$mpg) %>% mean()

df[df$hp>100 & df$wt > 2.5,]$mpg %>% mean()
