library(tidyverse)
library(ggplot2)

download.file(url = "https://mq-software-carpentry.github.io/R-git-for-research/data/Interviews_plotting.rds", destfile = "./data/Interviews_plotting.rds")

Interviews_plotting <- readRDS("~/Desktop/R workshop/data-carpentry-r/Data/Interviews_plotting.rds")

## ggplot (data = data name, mapping = what do we want to plot = aes = mappings) + <GEOM_FUNCTION ()

ggplot(data=Interviews_plotting, aes(x = no_membrs, y = number_items))+
  geom_point()

ggplot(data=Interviews_plotting, aes(x = no_membrs, y = number_items))+
  geom_point(alpha = 0.4)

ggplot(data=Interviews_plotting, aes(x = no_membrs, y = number_items))+
  geom_jitter(alpha = 0.4)

ggplot(data=Interviews_plotting, aes(x = no_membrs, y = number_items))+
  geom_jitter(alpha = 0.4, color = "blue")

ggplot(data=Interviews_plotting, aes(x = no_membrs, y = number_items))+
  geom_jitter(alpha = 0.4, aes( color = village))


ggplot(data=Interviews_plotting, aes(x = no_membrs, y = number_items, color = village))+
  geom_jitter(alpha = 0.4)


ggplot(data=Interviews_plotting, aes(x = village, y = rooms, color = respondent_wall_type))+
  geom_jitter()


ggplot(data=Interviews_plotting, 
       aes(x = respondent_wall_type, y = rooms))+
  geom_boxplot()


ggplot(data=Interviews_plotting, 
       aes(x = respondent_wall_type, y = rooms))+
  geom_boxplot(alpha = 0)+
  geom_jitter(alpha = 0.5, color ="tomato", width = 0.2)
 

#oder of the plots is important


ggplot(data=Interviews_plotting, 
       aes(x = respondent_wall_type, y = rooms))+
  geom_jitter(alpha = 0.5, color ="tomato", width = 0.2)+
  geom_boxplot(alpha = 0)
 

ggplot(data=Interviews_plotting, 
       aes(x = respondent_wall_type, y = rooms))+
  geom_violin(alpha = 0)+
  geom_jitter(alpha = 0.5, color ="tomato", width = 0.2)


ggplot(data=Interviews_plotting, 
       aes(x = respondent_wall_type, 
           y = liv_count,
           color =memb_assoc))+
  geom_jitter(alpha = 0.5, width = 0.2)+
  geom_boxplot(alpha = 0)


#improved plot

ggplot(data=Interviews_plotting, 
       aes(x = respondent_wall_type, 
           y = liv_count,))+
  geom_jitter(alpha = 0.5, width = 0.2,
              aes(color =memb_assoc))+
  geom_boxplot(alpha = 0)


ggplot(data=Interviews_plotting, 
       aes(x = respondent_wall_type, 
           y = liv_count,))+
  geom_jitter(alpha = 0.5, width = 0.2,
              aes(color =memb_assoc), height = 0)+
  geom_boxplot(alpha = 0)



ggplot(Interviews_plotting, 
       aes(x = respondent_wall_type))+
  geom_bar()


ggplot(Interviews_plotting, 
       aes(x = respondent_wall_type))+
  geom_bar(aes(fill = village))


ggplot(Interviews_plotting, 
       aes(x = respondent_wall_type))+
  geom_bar(aes(fill = village), position = "dodge")
