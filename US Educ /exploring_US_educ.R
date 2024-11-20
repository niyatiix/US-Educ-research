##  DATA MANIPULATION
library(tidyverse)

# COLLEGES CASE STUDY

#load in college dataset
master<- read_csv('http://672258.youcanlearnit.net/college.csv')

view(master)
unique(master$city)

#manipulate dataset
#using as factor to turn variable into a factor instead of numeric/categoric
college <- master %>%
  mutate(state = as.factor(state), region = as.factor(region), 
         highest_degree = as.factor(highest_degree), control = as.factor(control),
         gender = as.factor(gender), loan_default_rate = as.numeric(loan_default_rate))



