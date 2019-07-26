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


 interviews %>%
  group_by(village) %>%
  summarise(mean_no_mem = mean (no_membrs))

 interviews %>%
   filter(! is.na (memb_assoc)) %>%
   group_by(village, memb_assoc) %>%
   summarise(mean_no_mem = mean (no_membrs),
             min_membrs = min(no_membrs)) %>% 
   arrange(desc(min_membrs)) #desc is used to arrange from large to small, if removed it will be the reverse
 
 interviews %>% count(village, sort = TRUE)
 
 interviews %>%
   group_by(village) %>%
   summarise(mean_no_mem = mean (no_membrs),
             min_membrs = min(no_membrs),
             max_membrs = max(no_membrs),
             n = n ()) 

 
 # if not already included, add month, year, and day columns
 interviews %>%
   mutate(month = month(interview_date),
          day = day(interview_date),
          year = year(interview_date)) %>%
   group_by(year, month) %>%
   summarize(max_no_membrs = max(no_membrs))
 
 
# This is helpful for dummy coding
 interviews_spread <- interviews %>%
   mutate(wall_type_logical = TRUE) %>%
   spread(key = respondent_wall_type, value = wall_type_logical, fill = FALSE)


          
interviews_gather <- interviews_spread %>%
  gather(key = "respondent_wall_type", value = "wall_type_logical",
         burntbricks:sunbricks)
