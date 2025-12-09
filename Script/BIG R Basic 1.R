# Print message
message <- "Hello World!"
print(message)
cat(message)
message

# R as a calculator
2 + 2
2 - 3
10 * 2
2 ^ 3
10/2
10%%2
11 %% 2

# This is single line comment

# Rules for writing variables
a <- 30
age <- 30
myage <- 10
my.age <- 10
my_age <- 10

age = 10


# Reserved words
?Reserved
if <- 10
TRUE <- 10


# Entering input
age <- 30
age
print(age)
cat(age)

# Data Types

# 1. Numeric data
x <- 10
class(x)
y <- 10.5
class(y)

z <- 2 + 3i
class(z)

i <- 10L
class(i)

# Logical
bool1 <- TRUE
class(bool1)

bool2 <- FALSE
class(bool2)

# Character data types
message1 <- "Hello World!"
class(message1)

message2 <- 'Hello Bangladesh!'
class(message2)

# Built-in datasets
iris
str(iris)
Titanic
str(Titanic)


# Arithmetic Operators
x <- 10
y <- 2

# addition
x + y

# subtraction
x - y

# division
x / y

# modules
x %% y

# power
x ^ y

# multiplication
x * y


# Relational Operators
a <- 10
b <- 3

# equality
a == b

# inequality
a != b

# greater
a > b

# less
a < b

# greater or equal
a >=b

# less or equal
a <= b


# Logical operators: AND, OR, NOT


# NOT
# Today is Friday: P
# Today is not Friday: P0
!TRUE
!FALSE
!2 == 2

# AND: TRUE & TRUE = TRUE
2 == 2 & 3 > 2
2 == 2 & 3 < 2

# OR: TRUE | TRUE = TRUE; TRUE | FALSE = TRUE
2 == 2 | 3 > 2
2 == 2 | 3 < 2
2 > 2 | 3 < 2


# Part - II
# Statement and Control flow


# if statement (one condition)
if (condition) {
  #make descision
}

num <- 1
if (num > 0){
  print("Positive")
}

# if ... else statement (Two conditions)

if (condition) {
  # make a decision
} else {
  # make decision otherwise
}

num <- -10
if (num > 0) {
  print("Positive")
} else {
  print("negative")
}

# ifelse() (Two conditions)
ifelse(condition, "true", "false")
num <- -10
ifelse(num > 0, "Positive", "Negative")



# if ... else if ..else statement (More than two conditions)
if (Condition_1){
  # Do something
} else if ( condition) {
  # Do something
} else {
  # Do something
}

bmi <- 22
if (bmi < 18.5) {
  print("Underwight")
} else if (bmi < 25) {
  print("Normal weight")
} else if (bmi < 30) {
  print("Over weight")
} else {
  print("Obese")
}

# Loops function
# Iteration of a value
seq <- 1:5
for (i in seq){
  # Do somethng
  print("Bangladesh")
}


for (i in 1:5){
  print("Bangladesh")
}


for (i in 1:5){
  print(i)
}


for (i in seq(1, 20, 2)){
  print(i)
}

# break and next statement in for loop

for (i in 1:20) {
  if (i ==13) {
    break
  }
  print(i)
}



for (i in 1:20) {
  if (i == 13) {
    next
  }
  print(i)
}


# while loop for increment counting
count <- 2
while (condition) {
  # Do somethoing
}

while (count < 20){
  print(count)
  count = count + 3
}

# break and next statement in while loop
count <- 1

while (count < 10) {
  if (count == 5) {
    break
  }
  print(count)
  count = count + 1
}


while (count < 10) {
  if (count == 3) {
    next
  }
  print(count)
  count = count + 1
}

# Infinity loop when statement is absent

count <- 2
while (count < 10) {
  print (count)
}


# Data Structure in R
# Vectors (One dimensional)
# Matrix (Two dimensional)
# Data frame (Two dimensional)
# List


# Vector can be created by using c() function
# Mainly used for containing multiple values in a variable
Numeric_vector <-  c(1,2.5,3,4,5)
class(Numeric_vector)

Character_vec <- c("apple", "banana", "orange")
class(Character_vec)

Logical_vec <- c(T,F,F,T)
class(Logical_vec)

mix_vector <- c("Apple", "green", 1,2,6, TRUE)
class(mix_vector)

numeric_seq <- c(1:5)
class(numeric_seq)


# Creating matrix

matrix(1:9, nrow = 3, ncol = 3)

matrix(1:9, nrow = 3)

matrix(1:10, nrow = 2, byrow = T)

matrix(1:9, nrow = 3, dimnames = list(c("x","y","z"), c("a","b","c")))

# Retrieving values from matrix
mat <- matrix(1:9, nrow = 3)
mat

mat[3,2]

colnames(mat)
rownames(mat)
dim(mat)


# Creating Data frame

df <- data.frame(
  Name = c("a","b","c"),
  Age = c(20, 25, 36),
  Subject = c("IML", "BMB", "MIB")
)

df

df$Name
df$Subject

df[,3]
df[3,]

data()
ChickWeight


dim(ChickWeight)
head(ChickWeight)
tail(ChickWeight)

str(df)
summary(df)



# Install Packages
install.packages("openxlsx")
install.packages("readxl")

# Load packages
library(openxlsx)
library(readxl)

write.xlsx(df,"Output/df.xlsx")

readxl::read_excel("Data/gene_data.xlsx")



