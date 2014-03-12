apply(ZZZ, 2, function(x) length(which(!is.na(x))))
# Solution to HW1
# Yashesh A. Shroff
# 1/15/2013

# Quiz
# Q1. 

setwd("C:/Users/Shroff/Dropbox/share/code/videos/coursera/data-analytics/hw1")


# Count the number of na values in a dataset
apply(dat, 2, function(x) length(which(!is.na(x))))
dat = read.csv("hw1_data.csv", header=TRUE)

# Number of rows in the dataframe
nrow(dat)
# Without na
nrow(na.omit(dat$Ozone))

# Creating a new sample dataset
dataset <- data.frame(A = sample(c(NA, 1:100), 1000, rep = TRUE), B = rnorm(1000))

# Calc mean of column given conditions and ignore NA
mean(dat$Solar.R[dat$Ozone>31 & dat$Temp > 90], na.rm=TRUE)
