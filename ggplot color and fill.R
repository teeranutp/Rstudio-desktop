library(ggplot2)
library(tidyverse)

#color
ggplot(diamonds)+
  geom_bar(mapping = aes(cut,color= cut))

#fill
ggplot(diamonds)+
  geom_bar(mapping = aes(cut,fill= cut))

#fill with another column
ggplot(diamonds)+
  geom_bar(mapping = aes(cut,fill= clarity))

