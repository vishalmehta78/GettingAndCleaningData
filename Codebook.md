# Code Book

This code book presents details of objects used in run_analysis.R to produce tidy_data.txt and it also discribes various measures that are available.

## Identifiers

* `subject` - The ID of the test subject
* `activity` - The type of activity performed when the corresponding measurements were taken

## data elements

* subject_data - collection of subject IDs from train & test data.
* activity_data - collection of activity data from train & test data.
* feature_data - collection of various measures from train & test data.
* merge_data - combined collection of subject, activity & features data.
* extract_data - contains data for mean and standard deviation of measures in source data.
* Avg_SubAct - Aggregated data based on extract_data that shows mean of various measures by Subject and activity.

## Measurements

* Subject
* Activity
* TimeBodyAccelerometerMean()-X
* TimeBodyAccelerometerMean()-Y
* TimeBodyAccelerometerMean()-Z
* TimeBodyAccelerometerStandarDeviation()-X
* TimeBodyAccelerometerStandarDeviation()-Y
* TimeBodyAccelerometerStandarDeviation()-Z
* TimeGravityAccelerometerMean()-X
* TimeGravityAccelerometerMean()-Y
* TimeGravityAccelerometerMean()-Z
* TimeGravityAccelerometerStandarDeviation()-X
* TimeGravityAccelerometerStandarDeviation()-Y
* TimeGravityAccelerometerStandarDeviation()-Z
* TimeBodyAccelerometerJerkMean()-X
* TimeBodyAccelerometerJerkMean()-Y
* TimeBodyAccelerometerJerkMean()-Z
* TimeBodyAccelerometerJerkStandarDeviation()-X
* TimeBodyAccelerometerJerkStandarDeviation()-Y
* TimeBodyAccelerometerJerkStandarDeviation()-Z
* TimeBodyGyroscopeMean()-X
* TimeBodyGyroscopeMean()-Y
* TimeBodyGyroscopeMean()-Z
* TimeBodyGyroscopeStandarDeviation()-X
* TimeBodyGyroscopeStandarDeviation()-Y
* TimeBodyGyroscopeStandarDeviation()-Z
* TimeBodyGyroscopeJerkMean()-X
* TimeBodyGyroscopeJerkMean()-Y
* TimeBodyGyroscopeJerkMean()-Z
* TimeBodyGyroscopeJerkStandarDeviation()-X
* TimeBodyGyroscopeJerkStandarDeviation()-Y
* TimeBodyGyroscopeJerkStandarDeviation()-Z
* TimeBodyAccelerometerMagnitudeMean()
* TimeBodyAccelerometerMagnitudeStandarDeviation()
* TimeGravityAccelerometerMagnitudeMean()
* TimeGravityAccelerometerMagnitudeStandarDeviation()
* TimeBodyAccelerometerJerkMagnitudeMean()
* TimeBodyAccelerometerJerkMagnitudeStandarDeviation()
* TimeBodyGyroscopeMagnitudeMean()
* TimeBodyGyroscopeMagnitudeStandarDeviation()
* TimeBodyGyroscopeJerkMagnitudeMean()
* TimeBodyGyroscopeJerkMagnitudeStandarDeviation()
* FrequencyBodyAccelerometerMean()-X
* FrequencyBodyAccelerometerMean()-Y
* FrequencyBodyAccelerometerMean()-Z
* FrequencyBodyAccelerometerStandarDeviation()-X
* FrequencyBodyAccelerometerStandarDeviation()-Y
* FrequencyBodyAccelerometerStandarDeviation()-Z
* FrequencyBodyAccelerometerMeanFreq()-X
* FrequencyBodyAccelerometerMeanFreq()-Y
* FrequencyBodyAccelerometerMeanFreq()-Z
* FrequencyBodyAccelerometerJerkMean()-X
* FrequencyBodyAccelerometerJerkMean()-Y
* FrequencyBodyAccelerometerJerkMean()-Z
* FrequencyBodyAccelerometerJerkStandarDeviation()-X
* FrequencyBodyAccelerometerJerkStandarDeviation()-Y
* FrequencyBodyAccelerometerJerkStandarDeviation()-Z
* FrequencyBodyAccelerometerJerkMeanFreq()-X
* FrequencyBodyAccelerometerJerkMeanFreq()-Y
* FrequencyBodyAccelerometerJerkMeanFreq()-Z
* FrequencyBodyGyroscopeMean()-X
* FrequencyBodyGyroscopeMean()-Y
* FrequencyBodyGyroscopeMean()-Z
* FrequencyBodyGyroscopeStandarDeviation()-X
* FrequencyBodyGyroscopeStandarDeviation()-Y
* FrequencyBodyGyroscopeStandarDeviation()-Z
* FrequencyBodyGyroscopeMeanFreq()-X
* FrequencyBodyGyroscopeMeanFreq()-Y
* FrequencyBodyGyroscopeMeanFreq()-Z
* FrequencyBodyAccelerometerMagnitudeMean()
* FrequencyBodyAccelerometerMagnitudeStandarDeviation()
* FrequencyBodyAccelerometerMagnitudeMeanFreq()
* FrequencyBodyAccelerometerJerkMagnitudeMean()
* FrequencyBodyAccelerometerJerkMagnitudeStandarDeviation()
* FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()
* FrequencyBodyGyroscopeMagnitudeMean()
* FrequencyBodyGyroscopeMagnitudeStandarDeviation()
* FrequencyBodyGyroscopeMagnitudeMeanFreq()
* FrequencyBodyGyroscopeJerkMagnitudeMean()
* FrequencyBodyGyroscopeJerkMagnitudeStandarDeviation()
* FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()
* Angle(TimeBodyAccelerometerMean,Gravity)
* Angle(TimeBodyAccelerometerJerkMean),GravityMean)
* Angle(TimeBodyGyroscopeMean,GravityMean)
* Angle(TimeBodyGyroscopeJerkMean,GravityMean)
* Angle(X,GravityMean)
* Angle(Y,GravityMean)
* Angle(Z,GravityMean)


## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test