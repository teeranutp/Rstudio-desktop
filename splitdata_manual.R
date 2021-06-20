library(tidyverse)


##Split data manual
set.seed(42)
sample(1:10, 3)

set.seed(42)
n <- nrow(mtcars)
##n = 32

id <- sample(1:n, size = n*0.8)
train_data <- mtcars[id, ]
test_data <- mtcars[-id, ]

##Train model
model <- lm(mpg ~ hp + wt, data = train_data)
predicted_train <- predict(model)
error_train <- train_data$mpg - predicted_train
rmse_train <- sqrt(mean(error_train**2))

##Test model
predicted_test <- predict(model, newdata = test_data)
error_test <- test_data - predicted_test
rmse_test <- sqrt(mean(error_test**2))

##Print Result
cat("RMSE Train:", rmse_train,
"\nRMSE Test:", rmse_test)
