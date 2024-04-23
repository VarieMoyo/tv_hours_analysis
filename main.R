install.packages("tidyr")
install.packages("generics")


library("tidyverse")
install.packages("forcats")
install.packages("here")
library("forcats")
library("dplyr")
library("here")

tv_hours_table<- gss_cat %>% 
  filter(age>= 30) %>% 
  group_by(marital) %>% 
  summarize(mean_tvhours = mean(tvhours,na.rm=T))

write.csv(tv_hours_table,here("TV_Hours_by_Marital.csv"))

