CodeBook

1. Data source
Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

2. Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

3. The cleaned (modified data)
(1) The training and the test sets were merged to create one data set.
(2) Only the columns containing the mean and standard deviation for each measurement were extracted.

4. Variables included in the cleaned data
 "subject": the ID of the subject
 "Activity_Name": the activity performed by the subject

 "tBodyAcc-mean()-X": mean, body acceleration signal, x-axial, time domain  
 "tBodyAcc-mean()-Y": mean, body acceleration signal, y-axial, time domain  
 "tBodyAcc-mean()-Z": mean, body acceleration signal, z-axial, time domain  
 "tBodyAcc-std()-X" : standard deviation, body acceleration signal, x-axial, time domain  
 "tBodyAcc-std()-Y" : standard deviation, body acceleration signal, y-axial, time domain  
 "tBodyAcc-std()-Z" : standard deviation, body acceleration signal, z-axial, time domain  
 
 "tGravityAcc-mean()-X": mean, gravity acceleration signal, x-axial, time domain  
 "tGravityAcc-mean()-Y": mean, gravity acceleration signal, y-axial, time domain 
 "tGravityAcc-mean()-Z": mean, gravity acceleration signal, z-axial, time domain 
 "tGravityAcc-std()-X" : standard deviation, gravity acceleration signal, x-axial, time domain  
 "tGravityAcc-std()-Y" : standard deviation, gravity acceleration signal, y-axial, time domain  
 "tGravityAcc-std()-Z" : standard deviation, gravity acceleration signal, z-axial, time domain  
 
 "tBodyAccJerk-mean()-X": mean, body acceleration Jerk signal, x-axial, time domain 
 "tBodyAccJerk-mean()-Y": mean, body acceleration Jerk signal, y-axial, time domain  
 "tBodyAccJerk-mean()-Z": mean, body acceleration Jerk signal, z-axial, time domain 
 "tBodyAccJerk-std()-X" : standard deviation, body acceleration Jerk signal, x-axial, time domain   
 "tBodyAccJerk-std()-Y" : standard deviation, body acceleration Jerk signal, y-axial, time domain 
 "tBodyAccJerk-std()-Z" : standard deviation, body acceleration Jerk signal, z-axial, time domain 
 
 "tBodyGyro-mean()-X": mean, body gyroscope signal, x-axial, time domain  
 "tBodyGyro-mean()-Y": mean, body gyroscope signal, y-axial, time domain 
 "tBodyGyro-mean()-Z": mean, body gyroscope signal, z-axial, time domain 
 "tBodyGyro-std()-X" : standard deviation, body gyroscope signal, x-axial, time domain
 "tBodyGyro-std()-Y" : standard deviation, body gyroscope signal, y-axial, time domain
 "tBodyGyro-std()-Z" : standard deviation, body gyroscope signal, z-axial, time domain
 
 "tBodyGyroJerk-mean()-X": mean, body gyroscope Jerk signal, x-axial, time domain   
 "tBodyGyroJerk-mean()-Y": mean, body gyroscope Jerk signal, y-axial, time domain  
 "tBodyGyroJerk-mean()-Z": mean, body gyroscope Jerk signal, z-axial, time domain  
 "tBodyGyroJerk-std()-X" : standard deviation, body gyroscope Jerk signal, x-axial, time domain 
 "tBodyGyroJerk-std()-Y" : standard deviation, body gyroscope Jerk signal, y-axial, time domain 
 "tBodyGyroJerk-std()-Z" : standard deviation, body gyroscope Jerk signal, z-axial, time domain 
 
 "tBodyAccMag-mean()": mean, magnitude of body acceleration signal, time domain  
 "tBodyAccMag-std()":  standard deviation, magnitude of body acceleration signal, time domain  
 
 "tGravityAccMag-mean()": mean, magnitude of gravity acceleration signal, time domain  
 "tGravityAccMag-std()" : standard deviation, magnitude of gravity acceleration signal, time domain  
 
 "tBodyAccJerkMag-mean()": mean, magnitude of body acceleration Jerk signal, time domain  
 "tBodyAccJerkMag-std()" : standard deviation, magnitude of body acceleration Jerk signal, time domain
 
 "tBodyGyroMag-mean()": mean, magnitude of gyroscope signal, time domain
 "tBodyGyroMag-std()" : standard deviation, magnitude of gyroscope signal, time domain
 
 "tBodyGyroJerkMag-mean()": mean, magnitude of gyroscope Jerk signal, time domain 
 "tBodyGyroJerkMag-std()" : standard deviation, magnitude of gyroscope Jerk signal, time domain 
 
 The meaning of the following columns are similar to the above, except that the measurement was done in the frequency domain.
 
 "fBodyAcc-mean()-X" 
 "fBodyAcc-mean()-Y" 
 "fBodyAcc-mean()-Z" 
 "fBodyAcc-std()-X" 
 "fBodyAcc-std()-Y" 
 "fBodyAcc-std()-Z" 
 
 "fBodyAcc-meanFreq()-X" 
 "fBodyAcc-meanFreq()-Y" 
 "fBodyAcc-meanFreq()-Z" 
 "fBodyAccJerk-mean()-X" 
 "fBodyAccJerk-mean()-Y" 
 "fBodyAccJerk-mean()-Z" 
 
 "fBodyAccJerk-std()-X" 
 "fBodyAccJerk-std()-Y" 
 "fBodyAccJerk-std()-Z" 
 "fBodyAccJerk-meanFreq()-X" 
 "fBodyAccJerk-meanFreq()-Y" 
 "fBodyAccJerk-meanFreq()-Z" 
 
 "fBodyGyro-mean()-X" 
 "fBodyGyro-mean()-Y" 
 "fBodyGyro-mean()-Z" 
 "fBodyGyro-std()-X" 
 "fBodyGyro-std()-Y" 
 "fBodyGyro-std()-Z" 
 
 "fBodyGyro-meanFreq()-X" 
 "fBodyGyro-meanFreq()-Y" 
 "fBodyGyro-meanFreq()-Z" 
 "fBodyAccMag-mean()" 
 "fBodyAccMag-std()" 
 "fBodyAccMag-meanFreq()" 
 
 "fBodyBodyAccJerkMag-mean()" 
 "fBodyBodyAccJerkMag-std()" 
 
 "fBodyBodyAccJerkMag-meanFreq()" 
 "fBodyBodyGyroMag-mean()" 
 
 "fBodyBodyGyroMag-std()" 
 "fBodyBodyGyroMag-meanFreq()" 
 
 "fBodyBodyGyroJerkMag-mean()" 
 "fBodyBodyGyroJerkMag-std()" 
 "fBodyBodyGyroJerkMag-meanFreq()"
