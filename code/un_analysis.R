#Load in necessary functions for analysis
library(readr)
library(tidyverse)

#Read in data for the analysis
gapminder_1997 <- read_csv("gapminder_1997.csv")
View(gapminder_1997)

#Exploring different R commands
?read_csv

sum(5,6)

Sys.Date()

#Creating a plot! With X axis as gdp per cap and y axis as life expectancy.
ggplot(data = gapminder_1997) +
  aes(x = gdpPercap, y = lifeExp, color = continent, size = pop/1000000) +
  labs(x = "GDP Per Capita", y = "Life Expectancy (yrs)", 
      title = "Do people in wealthy countries life longer?" +
      size = "Population (in millions)") +
  geom_point() +
  theme_minimal()+
        
  scale_color_brewer(palette="Set1")



#Read in full gapminder dataset
gapminder_data <- read_csv(file = "gapminder_data.csv")
View(gapminder_data)

#Plot time (x-axis) and life expect (y-axis) points
ggplot(data=gapminder_data) +
  aes(x = year, y = lifeExp, color = continent,
      group = country) +
  labs(x = "Year", y = "Life Expectancy (yrs)") +
  geom_point() +
  theme_minimal() +
  scale_color_brewer(palette = "Set1")

#Geom boxplot
ggplot(gapminder_1997) +
  aes(x = continent, y=lifeExp, color = continent) +
  geom_boxplot() +
  geom_jitter(size=2, alpha=0.7)
  
  
  
  

