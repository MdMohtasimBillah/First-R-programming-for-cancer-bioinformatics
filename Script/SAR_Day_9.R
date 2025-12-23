# Data manipulation packages
library(tidyverse)

# Advanced Visualization
library(ggpubr) #
library(sjplot)

# Themes
install.packages("ggthemes")
library(ggthemes)

# Colors
library(RColorBrewer)
library(paletteer)
library(viridis)


# Data Upload
data <- read.csv("Data/pulse_data.csv")


# Steps in data visualization with ggplot2
# 1. Aesthetic (X,Y)
# 2. Visual property (type of charts)
# 3. Position, shape, color. etc.



# ggplot2 template
ggplot(data, aes(x = , y = ))+ geom_type()


# Simple bar chart
ggplot(data, aes(x = Alcohol))+
  geom_bar()


# Simple bar chart ~ fill by category
ggplot(data, aes(x = Alcohol, fill = Gender))+
  geom_bar()


# Simple bar chart ~ fill by category and change position
ggplot(data, aes(x = Alcohol, fill = Gender))+
  geom_bar(position = "dodge")



# Box plot
ggplot(data, aes(x = Gender, y = BMI))+
  geom_boxplot()


# Box plot ~ categorize
ggplot(data, aes(x = Gender, y = BMI, fill = Alcohol))+
  geom_boxplot()


# violin plot
ggplot(data, aes(x = Gender, y = BMI))+
  geom_violin()


# Violin plot ~ categorize
ggplot(data, aes(x = Gender, y = BMI, fill = Alcohol))+
  geom_violin()


# scatter plot for correlation
ggplot(data, aes(x = BMI, y = Weight, colour = Gender))+
  geom_point()


#line chart
ggplot(data, aes(x = Age, y = Height))+
  geom_line()


# Grouped line chart
ggplot(data, aes(x = Age, y = Height, fill = Gender, colour = Gender))+
  geom_line()

# Histogram generation
ggplot(data, aes(x = BMI))+
  geom_histogram(color = "black")


# Play with bin size
ggplot(data, aes(x =BMI))+
  geom_histogram(bins = 10, binwidth = .05)


# Grouped Histogram generation
ggplot(data, aes(x = BMI, fill = Gender))+
  geom_histogram(color = "black")


# Density plot
ggplot(data, aes(x = BMI))+
  geom_density()



# Grouped Density plot
ggplot(data, aes(x = BMI, fill = Gender))+
  geom_density()


# Splitting figures (facet)
ggplot(data, aes(x = BMI, fill = Gender))+
  geom_histogram(position = "dodge")

ggplot(data, aes(x = BMI, fill = Gender))+
  geom_histogram()+
  facet_wrap(~Gender)

ggplot(data, aes(x = BMI, fill = Gender))+
  geom_density()+
  facet_wrap(~Gender)


# Merge histogram and density plot
data |>
  ggplot(aes(x = BMI, fill = Gender, color = Gender))+
  geom_histogram(alpha = 0.5, aes( y = ..density..), position = "identity", bins = 10)+
  geom_density(alpha = 0.05)+
  facet_wrap(~Gender)


# Customization of a chart
basic_plot <- ggplot(data, aes(x = Exercise, fill = Gender))+
  geom_bar(position = "dodge")+
  labs(
    x = "Exercise Level",
    y = "Counts",
    title = "Distribution of Exercise by Gender",
    subtitle = "The figures show the frequency of distribution.",
    caption = "Data Source: CHIRAL"
  )

# Show the plot
basic_plot


# Working with themes
basic_plot + theme_bw()
basic_plot + theme_gray()
basic_plot + theme_classic()
basic_plot + theme_economist()
basic_plot + theme_pubclean()
basic_plot + theme_dark()
basic_plot + theme_wsj()



# Play with colors
display.brewer.all()
colors()



# Apply colors to the plot: color ~ fill (dynamic)
basic_plot + scale_fill_brewer()
basic_plot + scale_fill_colorblind()
basic_plot + scale_fill_canva()



# Apply journal color
install.packages("ggsci")
library(ggsci)

basic_plot + scale_fill_aaas()
basic_plot + scale_fill_bmj()
basic_plot + scale_fill_cosmic()
basic_plot + scale_fill_frontiers()
basic_plot + scale_fill_lancet()


# Add color manually
basic_plot + scale_fill_manual(values = c("blue", "green") )


ggplot(data, aes(x = Exercise))+
  geom_bar(color = "red", fill = "yellow")+
  labs(
    x = "Exercise Level",
    y = "Counts",
    title = "Distribution of Exercise by Gender",
    subtitle = "The figures show the frequency of distribution.",
    caption = "Data Source: CHIRAL"
  )




# Working with fonts
install.packages("showtext")
library(showtext)
font_add_google("Gochi Hand", "gochi") # Show text
showtext_auto()


loadfonts(device = "win")


# Add global font family, font size
basic_plot + theme_bw(base_size = 11, base_family = "gochi")







