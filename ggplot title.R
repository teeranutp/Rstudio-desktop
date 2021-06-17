install.packages("ggplot2")
install.packages("palmerpenguins")
install.packages("tidyverse")

library(ggplot2)
library(palmerpenguins)
library(tidyverse)

view(penguins)
tibble(penguins)


ggplot(data = penguins)+
  geom_point(mapping = aes(x= flipper_length_mm, y= body_mass_g, color= species))+
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", 
       subtitle = "Sample of Three Penguins Species",
       caption = "Penguins dataset")+
  annotate("text", x=220, y=3500, label= "The Gentoos are the largest", 
           color = "grey", fontface = "bold", size = 4.5, angle =30)
