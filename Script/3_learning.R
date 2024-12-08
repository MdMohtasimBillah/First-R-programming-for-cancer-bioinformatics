# if statement
num <- -10
if(num < 0){
  print("positive")
}

# if...else function
if(num > 0){
  print("positive")
} else{"negative"}

#if...else if...else function
4 == 2 & 5 == 2
4>5 | 0==0
BMI <- 21
if(BMI >= 18 & BMI < 25){
  print("normal")
} else if(BMI >= 25 & BMI < 30){
  print("Overweight")
} else ("obese")

# All the above code will properly run if the variable contain one data or objective and for numeric

#ifelse function
ages <- c(12,23,45)
ifelse(ages>18, "adult","child")

# for loop
for(variable in sequence){
  # do something
}

for(i in 1:9){
  print("Go for Jihad")
}

for(a in 1:10){print(a)}
for(b in 10:1){print(b)}
colors <- c("black", "blue", "gold", "pink")
for(d in colors){print(d)}

# next is a statement that used for ignore or prevent exact value
for(i in 1:100){
  if(i == 5)
  {next}
    print(i)
}

"v"
bb <- "rifat"
bb

# break is a statement that used to stop printing the sequence
for(i in 1:100){
  if(i == 5)
  {break}
  print(i)
}

# while loop
count <- 1
while(count <= 10){print(count)
  count <- count+1}
count <- 1
while(count <= 10){
  if(count == 5){
    break
  }
  print(count)
  count <- count + 1
}
count <- 1
while(count <= 50){
  if(count == 10){break}
  print(count)
  count <- count + 1
}
count

# Built in Function
ages <- c(12,52,85,45,63,41,23,10)
mean(ages)
median(ages)
sd(ages)
mode(ages)
sum(12,13)

# User defined function

add <- function(num_1,num_2){
  total <- num_1+num_2
  return(total)
}

add(10,20,52)

# Multiple function

addition <- function(...){
  number <- unlist(list(...))
  total <- sum(number)
  return(total)
}

addition(1,2,3,5,6,4,7,8,9)

# Simulation
# Generate 10 random numbers from 0 to 1 by using "runif"
x <- runif(10)
hist(x)

# Generate random integer by using "sample" function
sample(1:20, 7)

# for generate Normal distribution "rnorm" function used
n <- 1000
mean <- 10
sd <- 3
normal_distribution <- rnorm(n, mean, sd)
normal_distribution
hist(normal_distribution)

# for exponential distribution "rexp" fun ction used
n <- 500
rate <- 23
expo_dist <- rexp(n, rate)
expo_dist
hist(expo_dist)


if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install
library(BiocManager)
BiocManager::install("clusterProfiler")
library(clusterProfiler)

