library(dplyr)
library(tidyr)

interviews <- read.csv("~/Desktop/R workshop/data-carpentry-r/Data/SAFI_clean.csv", na="NULL")

select(interviews, village, no_membrs, years_liv)
filter(interviews, village == "God")


interviews %>%
  select(village, no_membrs, years_liv) %>%
  filter(village == "God", no_membrs > 6)




interviews %>%
  filter(memb_assoc == "yes") %>%
  select(affect_conflicts, liv_count, no_meals)


pp <- interviews %>%
  mutate(people_per_room = no_membrs / rooms)

pp <- interviews %>%
  filter(memb_assoc == "yes") %>%
  mutate(people_per_room = no_membrs / rooms)


New <- interviews %>%
  mutate(total_meals = no_membrs * no_meals) %>%
filter( total_meals > 20) %>%
  select(village, total_meals)


