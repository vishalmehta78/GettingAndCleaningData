**Getting and Cleaning Data** - Course Project
========================================

## Source data for project
This project uses data from [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. It's supposed that archive is extracted to the working directory.

The following files from the initial dataset is used:
  1. ***features.txt*** - includes the descriptions for features measured
  2. ***train/X_train.txt*** - includes the measurements of the features in train set (one row - 1 measurement of 561 features)
  3. ***test/X_test.txt*** - includes the measurements of the features in test set
  4. ***train/subject_train.txt*** - subject for each measurement from the train set
  5. ***test/subject_test.txt*** - subject for each measurement from the test set
  6. ***train/y_train.txt*** - activity (from 1 to 6) for each measurement from the train set
  7. ***test/y_test.txt*** - activity (from 1 to 6) for each measurement from the test set

## How it works

The above mentioned dataset is imported and analyzed by executing script called run_analysis.R with is included in the repository.

Given below are the steps that the script executes. Each of the steps can be easily identified in the script.

	1. First we setup working directory on the local enviornment and load packages that are used later in the script.
	2. The script downloads the dataset from above mentioned source location and stores it locally.
	3. The file is unziped and read into various data frames which are used for analysis.
	4. Below tasks are performed on the dataset to produce tidy_data.txt file which is also included
		- Merge the training and the test sets to create one data set.
		- Extract only the measurements on the mean and standard deviation for each measurement.
		- Use descriptive activity names to name the activities in the data set.
		- Appropriately label the data set with descriptive variable names.
		- Create a second, independent tidy set with the average of each variable for each activity and each subject.
		- Write the data set to the `tidy_data.txt` file.
