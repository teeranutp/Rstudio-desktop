library(tidyverse)

##check row
n <- nrow(mtcars)

##Split 70%
split <- sample(1:n, size = n*0.7)

split70 <- mtcars[split, ]
split30 <- mtcars[-split, ]

nrow(split70)
nrow(split30)

