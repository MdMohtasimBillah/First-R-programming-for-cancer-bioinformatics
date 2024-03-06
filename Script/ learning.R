library(tidyverse)
library(openxlsx)
library(usethis)
library(gapminder)

# String type of data
str <- "CHIRAL Bd"
class(str)

# Add to string
Message_1 <- "This is Rifat."
Message_2 <- "He is student"
Out <- paste(Message_1,Message_2)
out
Out

# make the string in lower and upper case
Lower <- tolower(Out)
Lower

Upper <- toupper(Out)
Upper

# Vector type of data
Vector <- c(1,2,3,4,5,66,52,12,85)
Vector
class(Vector)

# vector type of data in a sequence
vector_1 <- C(1:32)
vector_1

# Sequence of Vector with exact step
 seq(1,32, 3)

# Mixed vector
vector_2 <- c(T,F,F,F,T,21,"Zim")
class(vector_2)

# filtering vector data
vector_2[7]
vector_2[c(2:7)]

for_index <- c(12,52,63,58)
for_index[3]

# filtering multiple data from vector
colors <- c("red", "green","blue","golden", "orange", "black","silver" )
colors[c(2:5)]
colors[c(3,5,1,7)]
class(colors)

library(usethis)


# Matrix function
matrix(1:15, 2)
matrix(1:8)
matrix(1:9, nrow = 3)

# Indicate Number of column or row
mat_1 <- matrix(1:9, nrow = 3, ncol= 3)
mat_2 <- matrix(1:9, nrow = 3, byrow=T)
mat_2

# add dimension name
matrix(1:9, nrow = 3, ncol = 3, byrow=T, dimnames = list(c("A", "b", "C"), c("x", "Y", "z")))

mat_3 <- matrix(1:15, nrow = 5, byrow = T, dimnames=list(c("a","b","c","d","e"), c("X", "Y", "Z")))
mat_3

# Dimension or order check
dim(mat_3)
colnames(mat_3)
rownames(mat_3)

# Package install
install.packages("gapminder")

# Finding value from matrix
mat_3[3,]
mat_3
mat_3[5,2]
mat_3[1:3,]
mat_3[1:3,1:2]

library(ISLR)
install.packages("ISLR")
library(ISLR)
view(wage)
View(wage)
ISLR

# List: in list multiple data type can be input
list <- list("Rifat", TRUE, 3+2i, c(1,5,5))
str(list)

list_1 <- list(Name= "Rifat",
     Age= 23,
     is_student= TRUE,
     score= c(35,36,41,38,40))
str(list_1)

# factor function can use for categorized data
is_smoker <- factor(c("Yes","No", "No", "Yes"))
is_smoker
Gender <- factor(c("male","male","female","other"))
Gender

# Data Frame

df <- data.frame( "Id" = c(1,2,3,4,5,6),
  "Age" = c(23,31,34,27,22,32),
  "Sex" = factor(c("Female","Male","Male","Female","Male","Male")),
  "Marital_status" = factor(c("Married","Unmarried","Married","Unmarried","Engaged","Married")))
df
str(df)

# Built-in-data
data(BOD)
BOD
Indometh
explore <- Indometh
head(explore, 5)

# uploading data from pc
library(tidyverse)
gene_data <- read_table("D:/My/R/First-R-programming-for-cancer-bioinformatics/Data/gene_data.xlsx")

dim(gene_data)
genes <- read_table("table_degenes.txt")
dim(genes)

# identify "number of row" and "number of column" by using nrow, ncol
nrow(genes)
ncol(genes)

# for knowing name of column
names(genes)

str(genes)

# for identifying missing value is.na used and for determine the number of missing value sum() function used
is.na(genes)
sum(is.na(genes))

# for identifying duplicate
duplicated(genes)
sum(duplicated(genes))

nrow(gene_data)
ncol(gene_data)


genes_1 <- read_table("dddd.xlsx")
dim(genes_1)

# head() function used for call specific number of data
head(genes, n = 15)
summary(genes)

df_1 <- data.frame( "Id" = c(1,2,3,4,5,6),
                  "Age" = c(23,31,34,27,22,32),
                  "Sex" = c("Female","Male","Male","Female","Male","Male"),
                  "Marital_status" = c("Married","Unmarried","Married","Unmarried","Engaged","Married"))
summary(df_1)

df_1$Sex <- as.logical(df_1$Sex)
str(df_1)
summary(df_1)

# $ symbol used for call column
df_1$Marital_status <- as.factor(df_1$Marital_status)
summary(df_1)

# as family
as.character()
as.array()
as.numeric()
as.factor()

# class 3333333333333333333333333333333333333333333333333333333333333333

if(num > 29.9) {
  print("Obese")
}
num <- 35

if(BMI > 29.9){
  print("obese")
} else{
  print("Not obese")
}

BMI <- 36




if (bmi < 18.5) {
  print("underweight")
} else if (bmi >= 18.5 & bmi < 25) {
  print("normal")
} else if (bmi >= 25 & bmi < 30) {
  print("overweight")
} else {
  print("obese")
}

bmi <- 23

bmi
print(bmi)


20
x <- 36
x

Name <- c("Rabbi", "Hafiz", "Kabir", "Das")
if(Name <- das & T){
  print("Hindu")
}else{
  print("Muslim")
}

ages <- c(25, 40, 12, 8, 30)
if (ages < 18) {
  print("child")
} else {
  print("adult")
}
ifelse(Name <- "Das" & T, "Hindu", "Muslim")
ifelse(ages < 18, "child", "adult")


line <- "Thanks you for joining with us"
line
class(line)
line_1 <- "kabir"
line_1
class(line_1)
