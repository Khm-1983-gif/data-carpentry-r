#install.packages("tidyverse")
library(tidyverse)

length <- 10
width <- 5
area <- length * width
width <- 6


?sqrt

rooms <- c(2,1,1,NA,4)
 mean (rooms)
mean(rooms, na.rm = TRUE) 

is.na(rooms)

!is.na(rooms)
## Extract those elements which are not missing values.
rooms[!is.na(rooms)]
