install.packages("caret")
library(caret)
library(tidyverse)
library(mlbench)

data(Sonar)
tibble(Sonar)

Sonar %>%
  select(Class)


#Split data
set.seed(99)
train_id <- createDataPartition(
  Sonar$Class,
  p = 0.8,
  list = FALSE
)


train_data <- Sonar[train_id, ]
test_data <- Sonar[-train_id, ]

nrow(train_data)
nrow(test_data)