install.packages("tidyverse")
library(tidyverse)
library(ggplot2)

data("diamonds")
View(diamonds)


# any missing values
anyNA(diamonds)

# structure of the dataset
str(diamonds)

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, color = cut))

#filling with color
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut))

#let us clarity to get stacked bar charts
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))

#
diamonds %>% 
  count(clarity)

# count colors
diamonds %>% 
  count(color)

#let us look the relationship between price and carat
ggplot(data = diamonds) +
  geom_point(mapping = aes(x = price, y=carat, color = clarity))


