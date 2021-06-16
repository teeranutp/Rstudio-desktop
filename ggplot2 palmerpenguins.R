install.packages("ggplot2")
install.packages("palmerpenguins")
install.packages("tidyverse")

library(ggplot2)
library(palmerpenguins)
library(tidyverse)

view(penguins)
tibble(penguins)

#point in species
ggplot(data= penguins)+
  geom_point(mapping= aes(x= flipper_length_mm, 
                          y= body_mass_g, 
                          alpha= species), 
                          color= "salmon")

#point with smooth
ggplot(data= penguins)+
  geom_smooth(mapping= aes(x= flipper_length_mm, y= body_mass_g))+
  geom_point(mapping= aes(x= flipper_length_mm, y= body_mass_g))

#write shortcut
ggplot(penguins)+
  geom_point(mapping = aes(species, sex, color = "red"))



