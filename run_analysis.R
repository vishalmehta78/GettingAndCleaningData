#--------------------------------------------------------------------------------
# Set working Directory & Load Packages
#--------------------------------------------------------------------------------
  setwd("C:/R/Course3Proj")
  library(dplyr)
  library(data.table)

#--------------------------------------------------------------------------------  
# Download Dataset
#--------------------------------------------------------------------------------
  if(!dir.exists("./dataset"))
  {dir.create("./dataset")}
  
  if(file.exists("./dataset/DS_Files.zip")){
    file.remove("./dataset/DS_Files.zip")
    }  else {
    dsfile <-"./dataset/DS_Files.zip"
    filurl <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(filurl,dsfile, method = "curl")
    }
  
#--------------------------------------------------------------------------------
# UnZip the  dowloaded file & Read Data
#--------------------------------------------------------------------------------
  
  unzip(dsfile,exdir="./dataset")
  file.remove("./dataset/DS_Files.zip")

  setwd("C:/R/Course3Proj/dataset/UCI HAR Dataset")
  
  #test data
  
  subject_test <- read.table("./test/subject_test.txt")
  x_test <- read.table("./test/x_test.txt")
  y_test <- read.table("./test/y_test.txt")
  
  #train data
  subject_train <- read.table("./train/subject_train.txt")
  x_train <- read.table("./train/x_train.txt")
  y_train <- read.table("./train/y_train.txt")
  
  #features data
  features <- read.table("./features.txt")
  
  #activities data
  activities <- read.table("./activity_labels.txt")
  colnames(activities) <- c("Activity_Id", "Activity_Label")

#--------------------------------------------------------------------------------    
# 1. Merges the training and the test sets to create one data set.  
#--------------------------------------------------------------------------------  

  subject_data <- rbind(subject_test,subject_train)
  activity_data <- rbind(y_test, y_train)
  feature_data <- rbind(x_test, x_train)
  
  colnames(subject_data) <- "Subject"
  colnames(activity_data) <- "Activity"
  colnames(feature_data) <- t(features[2])
  
  merge_data <- cbind(subject_data,activity_data,feature_data)

  #clean-up 
  
  rm(subject_test,subject_train,y_test, y_train,x_test, x_train, subject_data,activity_data,feature_data, features)
  
#-------------------------------------------------------------------------------------------
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.  
#-------------------------------------------------------------------------------------------  
  
  collist <- grep(".*Mean.*|.*Std.*", names(merge_data), ignore.case=TRUE)
  extract_data <- merge_data[,c(1,2,collist)]
  
  #clean-up
  rm(collist)
  
#--------------------------------------------------------------------------------
# 3. Uses descriptive activity names to name the activities in the data set
#--------------------------------------------------------------------------------
  
  extract_data$Activity <- factor(extract_data$Activity, levels = activities[, 1], labels = activities[, 2])
  
  #clean-up
  rm(activities)

#--------------------------------------------------------------------------------  
# 4. Appropriately labels the data set with descriptive variable names.
#--------------------------------------------------------------------------------  

  desc_labels <- colnames(extract_data)  
  
  desc_labels<-gsub("Acc", "Accelerometer", desc_labels)
  desc_labels<-gsub("Gyro", "Gyroscope", desc_labels)
  desc_labels<-gsub("BodyBody", "Body", desc_labels)
  desc_labels<-gsub("Mag", "Magnitude", desc_labels)
  desc_labels<-gsub("tBody", "TimeBody", desc_labels)
  desc_labels<-gsub("angle", "Angle", desc_labels)
  desc_labels<-gsub("gravity", "Gravity", desc_labels)
  
  desc_labels<-gsub("-mean()", "Mean", desc_labels, ignore.case = TRUE)
  desc_labels<-gsub("-std()", "StandarDeviation", desc_labels, ignore.case = TRUE)
  desc_labels<-gsub("-freq()", "Frequency", desc_labels, ignore.case = TRUE)
  
  desc_labels<-gsub("^t", "Time", desc_labels)
  desc_labels<-gsub("^f", "Frequency", desc_labels)
  
  
  colnames(extract_data) <- desc_labels

#---------------------------------------------------------------------------------------------------
# 5. Independent tidy data set with the average of each variable for each activity and each subject.
#---------------------------------------------------------------------------------------------------
  
  Avg_ActSub <- extract_data %>%
                    group_by(Subject, Activity) %>%
                      summarise_all(mean)
  
  #---------------------------------------------------------------------------------------------------
  # Write tidy data set to a file
  #---------------------------------------------------------------------------------------------------
  
write.table(Avg_ActSub,"tidy_data.txt", quote = FALSE,sep="|")