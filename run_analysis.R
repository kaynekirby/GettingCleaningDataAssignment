# Set working directory
setwd("C:/Users/kynmk/Documents/Data Science/Data Science Specialization/WD/Course 3/Week 4")

# 1. Merges the training and the test sets to create one data set.

# Read in files from working directory

TestData <- read.table("X_test.txt")
TrainData <- read.table("X_train.txt")
TestLabels <- read.table("Y_test.txt")
TrainLabels <- read.table("Y_train.txt")
TestSubjects <- read.table("subject_test.txt")
TrainSubjects <- read.table("subject_train.txt")
Features <- read.table("features.txt")

# ** Need to ** Add the Features to the column names for the Data tables for Test and Train
library(sjlabelled)
TestData <- set_label(TestData, label = Features[,2])

# ** Not working ** Must be an easier way!!

# Bind the Label and Subject tables to the Data tables for Test and Train

TestDataLabeled <- cbind(TestSubjects, TestLabels, TestData)
TrainDataLabeled <- cbind(TrainSubjects, TrainLabels, TrainData)

# Bind the Test and Train Data sets together

Data <- rbind(TestDataLabeled, TrainDataLabeled)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

