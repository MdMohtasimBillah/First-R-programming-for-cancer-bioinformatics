# Install Packages
install.packages("gtsummary")
install.packages("gt")
install.packages("easystats")


# Load packaeges
library(tidyverse)
library(gtsummary)
library(gt)
library(easystats)


# Create table
trial |>
  select(trt, age, marker, stage) |>
  tbl_summary(missing = "no")


# Read data
data <- readxl::read_excel("Data/KAP_Thals_Processed.xlsx", sheet = 5)



# Descriptive table
data |>
  select(1:6) |>
  tbl_summary(
    statistic = list(all_continuous() ~ "{mean} ({sd})"),
    type = `Do you know about thalassemia?` ~ "categorical"
  ) |>
  as_gt() |>
  gtsave("Output/Table1.docx")


# Cross or comparative table
data |>
  select(1:6) |>
  tbl_summary(
    statistic = list(all_continuous() ~ "{mean} ({sd})"),
    by = `Do you know about thalassemia?`
  ) |>
  add_p() |>
  bold_p(t = 0.05) |>
  as_gt() |>
  gtsave("Output/Table2")


# pearson chi square test is performed for association test
# Numeric variable ~ categorical -> check differentiation
# Categorical ~ categorical -> check association
# Numeric ~ numeric -> correlation



















