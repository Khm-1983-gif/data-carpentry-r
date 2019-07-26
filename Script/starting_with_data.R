library(tidyverse)
interviews <- read_csv("Data/SAFI_clean.csv", na="NULL")
dim(interviews)
nrow(interviews)
ncol(interviews)

interviews[1,1]
 interviews [, -2:-6]
 
 
 respondent_floor_type <- factor(c("earth", "cement", "cement", "earth"))

 levels(respondent_floor_type) 

 nlevels(respondent_floor_type) 

 respondent_floor_type # current order 

 respondent_floor_type <- factor(respondent_floor_type, levels = c("earth", "cement"))
 respondent_floor_type # after re-ordering 
 
 levels(respondent_floor_type)

 levels(respondent_floor_type)[2] <- "brick"
 levels(respondent_floor_type) 
 
 as.character(respondent_floor_type)

 year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
 as.numeric(year_fct)                     # Wrong! And there is no warning... 
 
 as.numeric(as.character(year_fct))       # Works...

 as.numeric(levels(year_fct))[year_fct]   # The recommended way. 

  