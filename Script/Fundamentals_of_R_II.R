# if Statement
Syntax
if(condition){
  #code block executed when condition is true
  }
#Example
x <- 5
if (x <= 0){
  print("Our value is less than Zero")
}


# if...else Statement
Syntax
if(condition){
  #code block executed when condition is true
} else{
  #code block executed when condition is true
}
# Example
y <- 10
if(y > 0){
  print("Our value is negative")
}else{
  print("Positive")
}


# if...else if...else Statement
Syntax
if(condition_1){
  # Code block executed when condition is true
} else if(condition_2){
  # Code block executed when condition is true
} else{
  # Code block executed when condition is true
}
# Example
BMI  <- 22
if(BMI < 18 ){
  print("Under weight")
} else if(BMI >= 18 & BMI < 25){
  print("Normal weight")
} else if(BMI >=25 & BMI < 30){
  print("Over weight")
} else if(BMI >=30 & BMI < 40){
  print("Obese")
} else{
  print("Morbid obese")
}


# ifelse Function
Syntax
ifelse(condition, true_value, false_value)
# Example
x <- c(1,6,5,12,23,5,25,0)
ifelse(x>0,"Positive", "Negative or Zero")

# Missing Value Handling by ifelse()
M <- c(1,5,36,2,5,NA,NaN,8)
ifelse(is.na(M), "Missing", ifelse(M > 10, "Outlier", "Normal"))

# Data Frame sort down by ifelse()
df <- data.frame(Name = c("Rifat", "Sifat", "Kabir"), Age = c(23,55,27))

df$Category <- ifelse(df$Age > 30, "Senior", "Junior")
df

# For Loop
for (variable in sequence){
  # Code block to be executed when the condition is true
}
# Example
for(i in 1:5){
  print("i")
}

for (f in 1:10) {
  print(f)
}

for (f in 1:10){
  if(f %% 2 == 0){
    print(paste(f, "Even"))
  }else{
    print(paste(f, "Odd"))
  }
}













