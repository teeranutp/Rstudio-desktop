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

#p is geom_point
p <- ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()

p + annotate("rect", xmin = 3, xmax = 4.2, ymin = 12, ymax = 21,
          alpha = .2)

p + annotate("pointrange", x = 3.5, y = 20, ymin = 12, ymax = 28,
             colour = "red", size = 1.5)

p + annotate("text", x = 4, y = 25, label = "italic(R) ^ 2 == 0.75",
             parse = TRUE)

p + annotate("text", x = 4, y = 25, label = "Some text")

p + annotate("text", x = 2:5, y = 25, label = "Some text")




