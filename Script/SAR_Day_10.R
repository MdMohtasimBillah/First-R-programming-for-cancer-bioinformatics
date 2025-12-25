# Load packages
library(tidyverse)

install.packages("tidyplots")
library(tidyplots)


# Data upload
data <- read.csv("Data/pulse_data.csv")


# Categorical data count visualization
data |>
  tidyplot(x = Exercise) |>
  add_count_bar() |>
  add_count_dash(color = "black") |>
  add_count_dot(color = "red") |>
  add_count_value(color = "black") |>
  add_count_line()


# Central tendency of numeric variable based on categorical variable
data |>
  tidyplot(x = BMICat, y = Weight) |>
  add_mean_bar() |>                  # fill can be usedto change the color
  add_mean_dash(color = "black") |>
  add_mean_value()


data |>
  tidyplot(x = BMICat, y = Weight) |>
  add_median_bar() |>                  # fill can be usedto change the color
  add_median_dash(color = "black") |>
  add_median_value() |>
  flip_plot()


# Histogram: Distribution of numeric variable
data |>
  tidyplot(x = Pulse2, fill = Gender) |>
  add_histogram(bins = 10)

# Split histogram
data |>
  tidyplot(x = Pulse2) |>
  add_histogram(bins = 10) |>
  split_plot(by = Gender)

# Correlation: Data point
data |>
  tidyplot(x = Height, y = BMI) |>
  add_data_points()


# Pie chart
data |>
  tidyplot(color = Gender) |>
  add_pie()

# Donut chart
data |>
  tidyplot(color = Exercise) |>
  add_donut( width = 0.5)

# Spliting the chart
data |>
  tidyplot(color = Exercise) |>
  add_pie() |>
  split_plot(by = BMICat)


# Boxplot and violin plot generation
data |>
  tidyplot(x = Gender, y = BMI) |>
  add_boxplot() |>
  add_test_pvalue()


data |>
  tidyplot(x = Gender, y = BMI) |>
  add_violin() |>
  add_test_pvalue()


data |>
  tidyplot(x = Exercise, y = BMI) |>
  add_boxplot() |>
  add_test_pvalue() |>
  save_plot("Output/tidyplot.png")

# Annotation
data |>
  tidyplot(x = Exercise, y = BMI) |>
  add_boxplot() |>
  add_test_pvalue() |>
  add_reference_lines(y = c(10,20,30,40)) |>
  add_title("This is boxplot") |>
  add_caption("CHIRAL") |>
  add_annotation_text("boxplot", x = 2, y = 50)



mtcars %>%
  correlate() %>%
  rearrange() %>%
  shave() %>%
  rplot()


# Correlation matrix
library(gtsummary)
library(correlation)
library(easystats)

data |>
  select(Weight, BMI, Age, Height) |>
  correlation() |>
  summary() |>
  plot()


