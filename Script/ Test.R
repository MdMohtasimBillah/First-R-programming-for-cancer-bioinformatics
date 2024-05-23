xl_data <- read_excel("Life_Expectancy_Long (2).xlsx")

csv_data <- read.csv("diabetes (2).csv")

text_data <- read.table("table_degenes.txt", sep = "\t", header = T)
text_data

# Custom column
Data <- read.table("table_degenes.txt", header=F)

Column <- c("Gene_symbol", "Gene_ID", "Median_tumotr", "Median_normal", "Log2fold_change", "adjp")

# Check Columns
names(Data) <- Column
names(Data)
# export data
write.xlsx(Data, "data.xlsx")

# Data wrangling - Explore your data
head(gapminder, 10)     # Examine first few rows
head(gapminder, n=10)

data <- read_excel("data.xlsx")
tail(data, 10) # Examine last few rows
tail(gapminder, 10)

# sampling
sample_n(gapminder,10)
sample_n(data,10)
sample_frac(gapminder,0.20)
sample_frac(data,0.20)
sample_frac(data,0.10)

# Know your column
names(gapminder)
names(data)

# Check dimension of your data
dim(gapminder)
ncol(gapminder)
nrow(gapminder)
dim(data)

# Check data structure
str(gapminder)
glimpse(gapminder)

str(data)     # "str" showed data type(character or number)
glimpse(data) # glimpse showed data type(categorical or factorial)

# Check missing value
sum(is.na(gapminder))
sum(is.na(data))
install.packages("tidyverse")
install.packages("gapminder")
install.packages("openxlsx")
install.packages("readr")
