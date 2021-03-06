CodeBook
========

This CodeBook describes the variables and summaries calculated over "Human Activity Recognition Using Smartphones Dataset" version 1.0 avalaible on:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Original source:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Data manipulation
=================

- First step: Merges the training and the test data sets.
- Second step: Add subject column from subject_test.txt and subject_train.txt, and activity column from y_test.txt and y_train.txt with the appropiate labels ("activity_labels.txt").
- Third step: Select subject and activity columns, and extracts only the measurements on the mean and standard deviation for each measurement.
- Fourth step: Average of each variable for each activity and each subject into "har_meanstd_grp" data frame.


Variables
=========

### Subject and activity identifiers

- "subject": An identifier of the subject who carried out the experiment. Identifiers are numbers between 1 and 30.
- "activity": WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

### Features from the original dataset

The features selected for the original database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.

#### Two groups:

- Time domain signals (prefix 't' to denote time): captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

- Fast Fourier Transform (FFT, prefix 'f'): applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.

#### List of variables:

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were averaged from the original datasets are: 

- mean(): Mean value.
- std(): Standard deviation.

Variables:

- "tBodyAcc.mean...X"
- "tBodyAcc.mean...Y"
- "tBodyAcc.mean...Z"
- "tBodyAcc.std...X"
- "tBodyAcc.std...Y"
- "tBodyAcc.std...Z"
- "tGravityAcc.mean...X"
- "tGravityAcc.mean...Y"
- "tGravityAcc.mean...Z"
- "tGravityAcc.std...X"
- "tGravityAcc.std...Y"
- "tGravityAcc.std...Z"
- "tBodyAccJerk.mean...X"
- "tBodyAccJerk.mean...Y"
- "tBodyAccJerk.mean...Z"
- "tBodyAccJerk.std...X"
- "tBodyAccJerk.std...Y"
- "tBodyAccJerk.std...Z"
- "tBodyGyro.mean...X"
- "tBodyGyro.mean...Y"
- "tBodyGyro.mean...Z"
- "tBodyGyro.std...X"
- "tBodyGyro.std...Y"
- "tBodyGyro.std...Z"
- "tBodyGyroJerk.mean...X"
- "tBodyGyroJerk.mean...Y"
- "tBodyGyroJerk.mean...Z"
- "tBodyGyroJerk.std...X"
- "tBodyGyroJerk.std...Y"
- "tBodyGyroJerk.std...Z"
- "tBodyAccMag.mean.."
- "tBodyAccMag.std.."
- "tGravityAccMag.mean.."
- "tGravityAccMag.std.."
- "tBodyAccJerkMag.mean.."
- "tBodyAccJerkMag.std.."
- "tBodyGyroMag.mean.."
- "tBodyGyroMag.std.."
- "tBodyGyroJerkMag.mean.."
- "tBodyGyroJerkMag.std.."
- "fBodyAcc.mean...X"
- "fBodyAcc.mean...Y"
- "fBodyAcc.mean...Z"
- "fBodyAcc.std...X"
- "fBodyAcc.std...Y"
- "fBodyAcc.std...Z"
- "fBodyAccJerk.mean...X"
- "fBodyAccJerk.mean...Y"
- "fBodyAccJerk.mean...Z"
- "fBodyAccJerk.std...X"
- "fBodyAccJerk.std...Y"
- "fBodyAccJerk.std...Z"
- "fBodyGyro.mean...X"
- "fBodyGyro.mean...Y"
- "fBodyGyro.mean...Z"
- "fBodyGyro.std...X"
- "fBodyGyro.std...Y"
- "fBodyGyro.std...Z"
- "fBodyAccMag.mean.."
- "fBodyAccMag.std.."
- "fBodyBodyAccJerkMag.mean.."
- "fBodyBodyAccJerkMag.std.."
- "fBodyBodyGyroMag.mean.."
- "fBodyBodyGyroMag.std.."
- "fBodyBodyGyroJerkMag.mean.."
- "fBodyBodyGyroJerkMag.std.."
