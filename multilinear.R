install.packages("tidyverse")
install.packages("dplR")

library(tidyverse)
library(dplyr)

#Multiple Linear Regression
mpg = f(hp, wt, am)
mpg = intercept + b0*hp + b1*wt + b2*am

MulipleLinearRegression <- lm(mpg ~ hp + wt +am, data = mtcars) 
coef(MulipleLinearRegression)

#Full Model
FullLinearRegression <- lm(mpg ~ ., data = mtcars)

#expept 
FullLinearRegressionExGear <- lm(mpg ~ . -gear, data = mtcars)
