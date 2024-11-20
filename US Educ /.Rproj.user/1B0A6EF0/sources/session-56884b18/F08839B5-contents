##  DATA VISUALISATION IN R WITH GGPLOT2
install.packages("maps")
install.packages("mapproj")
library(tidyverse)
library(maps)
library(mappr)


# COLLEGES CASE STUDY

#load in college dataset
master<- read_csv('http://672258.youcanlearnit.net/college.csv')

#view(master)
#unique(master$city)

#manipulate dataset
#using as factor to turn variable into a factor instead of numeric/categoric
college <- master %>%
  mutate(state = as.factor(state), region = as.factor(region), 
         highest_degree = as.factor(highest_degree), control = as.factor(control),
         gender = as.factor(gender), loan_default_rate = as.numeric(loan_default_rate))

#load state data using maps package
states <- map_data('state')

#plotting basic US map
ggplot(states) +
  geom_polygon(mapping = aes(x = long, y = lat, group = group), colour = 'grey', fill = 'beige') +
  coord_map() +
  theme(plot.background = element_blank(),
        panel.background = element_blank(),
        axis.title = element_blank(),
        axis.ticks = element_blank(),
        axis.text = element_blank()) +
  geom_point(data = college, mapping = aes(x = lon, y = lat))
  
  
  
  
  
