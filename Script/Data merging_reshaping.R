# Install Packages
install.packages("tidyverse")
install.packages("naniar")
install.packages("readxl")
install.packages("openxlsx")


# Load packages
library(tidyverse)
library(naniar)
library(readxl)
library(openxlsx)


# Finding missing value
test <- c(0, -1, 1, NA)
test

test2 <- test/0
test2

# Look NaN
is.nan(test)
is.nan(test2)

# Look NA
is.na(test)
is.na(test2)

# Look Inf
is.infinite(test)
is.infinite(test2)

# any() & sum()
any(is.na(test))
any(is.na(test2))


sum(is.na(test))
sum(is.na(test2))
sum(is.infinite(test2))

# Built in data

data()

starwars
names(starwars)

# Checking Missing value
any(is.na(starwars))

# Checking missing summary
miss_var_summary(starwars)
miss_var_which(starwars)

# Checking visual
gg_miss_var(starwars)


# Missing value issue
marks <- c(67, 90, 82, 93, 91, 70, NA)

mean(marks)
median(marks)
sum(marks)

# Remove missing value
mean(marks, na.rm = TRUE)
median(marks, na.rm = T)
sum(marks, na.rm =T)

# Remove missing value from data frame
dim(starwars)

star_drop <- drop_na(starwars)

# Conversion of data character to factor
glimpse(starwars)

starwars |>
  mutate_if(is.character, is.factor) |>
  glimpse()

mass_med <- median(starwars$mass, na.rm = T)
height_med <- median(starwars$height, na.rm = T)


starwars_recode <- starwars |>
  mutate(mass = replace_na_with(mass, mass_med)) |>
  mutate(height = replace_na_with(height, height_med))

gg_miss_var(starwars_recode)


# Data Import
a <- read_excel("Data/cleaning_diet_data.xlsx")
b <- read.csv("Data/CSV_data.csv")
c <- read.table("Data/text_data.txt")


# data export
write.xlsx(a, "Output/xlsx_export.xlsx")
write.csv(a, "Output/csvex.csv")
write.table(a, "Output/text.txt")


# data upload
data <- read_excel("Data/cleaning_diet_data.xlsx")

data |>
  count(Treatment)


# First method to clean
data |>
  mutate(Treatment_recoded =case_when(
    Treatment == "Mint" ~ "Peppermint",
    Treatment == "mint" ~ "Peppermint",
    Treatment == "peppermint" ~ "Peppermint",
    Treatment == "Ginger" ~ "Ginger",
    Treatment == "O" ~ "Other",
    Treatment == "Other" ~ "Other"
  )) |>
  count(Treatment_recoded)



# Efficient way
data |>
  mutate(Treatment_recoded = case_when(
    Treatment %in% c("Mint", "mint", "peppermint") ~ "Peppermint",
    Treatment %in% c ("Other", "O", "o") ~ "Other",
    TRUE ~ Treatment
  )) |>
  count(Treatment_recoded)


# Categorize
data |>
  mutate(Effect = case_when(
    Weight_change > 0 ~ "Increase",
    Weight_change == 0 ~ "Same",
    Weight_change < 0 ~ "Decrease"
  ))


# str_detect()

data |>
  filter(str_detect(string = Treatment, pattern = "int"))

data |>
  filter(str_detect(string = Treatment, pattern = "^O|^o"))


# data cleaning with str_detect()

data |>
  mutate(Treatment_recoded = case_when(
    str_detect(string = Treatment, pattern = "int") ~ "Peppermint",
    str_detect(string = Treatment, pattern = "^O|^o") ~ "Other",
    T ~ Treatment
  ))


# Data Reshaping
data <- read_excel("Data/Life_Expectancy.xlsx")

long <- data |>
  pivot_longer(cols = 2:75,
               names_to = "Year",
               values_to = "Life_expectancy")


wide <- long |>
  pivot_wider(names_from = Year,
              values_from = Life_expectancy)



# data merging
demographic <- read.csv("data/demographics.csv")
test <- read.csv("Data/tests.csv")


merge(demographic,
      test,
      by = "PatientID",
      all = T)























