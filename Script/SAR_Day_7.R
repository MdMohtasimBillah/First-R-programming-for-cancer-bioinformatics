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



# read the data
data <- read.csv("data/Thalassemia_QoL_Processed.csv")



# Table 1 Demonstrates the demographic characteristics of the patients (N = 365)
data |>
  select(1:8) |>
  tbl_summary() |>
  as_gt() |>
  gtsave("qol_tables/Table1.docx")

# Table 2 Clinical characteristics of thalassemia patients (N = 356).
data |>
  select(9:17) |>
  tbl_summary(
    type = c(Severity, Previous_3Months_Transfution) ~ "categorical"
  ) |>
  as_gt() |>
  gtsave("qol_tables/Table2.docx")




# Table 3 Health-related Quality of life (QoL) of thalassemia patients, according to Short Form (SF-36) score.
data |>
  select(18:28, Gender) |>
  tbl_summary(
    type = everything() ~ "continuous",
    by = Gender
  ) |>
  add_p() |>
  bold_p(t = 0.05) |>
  add_overall() |>
  as_gt() |>
  gtsave("qol_tables/Table3.docx")













