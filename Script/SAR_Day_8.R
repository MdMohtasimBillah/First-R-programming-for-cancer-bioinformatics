# Load packages
library(tidyverse)
library(gtsummary)
library(gt)
library(easystats)



# Load Data
data <- read.csv("Data/Thalassemia_QoL_Processed.csv")



# basics

# y = mx + c

# impact of cycling(independent) on heart rate(dependent)
# smoking(independent) cause cancer(dependent)

# y (dependent) = mx (independent) + c -> univariate analysis
# y (dependent) = mx1 + mx2 + mx3 + c -> multivariate analysis

# dependent variable also called outcome


# decision making: regression analysis

# outcome = numeric (continuous) ~ Linear regression
# outcome = numeric (discrete/count) ~ Poisson regression
# outcome = binary (yes/no or 0/1) ~ logistic regression
# outcome = ordinal (Ratings: poor, moderate, good) ~ ordinal regression




# Univariate linear regression
# Impact of demographics and clinical variable on Quality of life score
# Outcome: Quality of life -> numeric (continuous)
# Independent variables: demographics and clinical variables
# Beta coefficients (the slope)

lm(y ~ x, data = data)

uv_linear1 <- lm(QOL_Score ~ Age_of_Participants, data = data)
uv_linear2 <- lm(QOL_Score ~ Gender, data = data)
report(uv_linear2)


uv_tbl1 <- data |>
  select(1:17, QOL_Score) |>
  tbl_uvregression(
    y = QOL_Score,
    method = lm
  ) |>
  bold_p(t = 0.05)


# Univariate logistic regression
# Impact of demographics and clinical variable on Quality of life status
# Outcome: Quality of life status -> binary
# Independent variables: demographics and clinical variables
# Provide logarithmic coefficient or Odds ratio

uv_logis <- glm(QOL_Status_Code ~ Gender, family = "binomial", data = data)
report(uv_logis)


uv_tbl2 <- data |>
  select(1:17, QOL_Status_Code) |>
  tbl_uvregression(
    y = QOL_Status_Code,
    method = glm,
    method.args = list(family = binomial),
    exponentiate = T
  ) |>
  bold_p(t = 0.05)

# OR > 1 ~ Positive
# OR < 1 ~ Negative
# OR = 1 ~ No association


# Merge Table

tbl_merge(
  tbls = list(uv_tbl1, uv_tbl2),
  tab_spanner = c("**UV Linear Regression**", "**UV Logistic Regression**")
) |>
  as_gt() |>
  gtsave("Outcome/merged_UV_line_Logis.docx")




# Multivariate regression analysis

# Multivariate linear regression
# y = mx1 + mx2 + mx3 + c

mv_linear_reg <- lm(QOL_Score ~ Age_of_Participants + Marital_Status +
     Level_of_Education + Area_of_Residence +
     Gender + Type_of_Family, data = data)

# Tabular form
mv_linear_reg |>
  tbl_regression() |>
  bold_p(t = 0.05)

names(data)


# Multivariate logistic regression
mv_logis_reg <- glm(QOL_Status_Code ~ Age_of_Participants + Marital_Status +
     Level_of_Education + Area_of_Residence +
     Gender + Type_of_Family,
     family = binomial,
     data = data)

# Tabular form
mv_logis_reg |>
  tbl_regression(exponentiate = T) |>
  bold_p(t = 0.05)




