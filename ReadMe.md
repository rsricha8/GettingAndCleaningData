Getting and Cleaning Data Course Project
=========================================

This CodeBook is about a tidydata.txt attached herealong. This file is created from dataset named **Human Activity Recognition Using Smartphones Dataset Version 1.0** which can be found [here](
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

##**Overview of data**

The Readme.txt of the Raw Data explains the data as: 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS,WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly 
partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled
in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, 
which has gravitational and body motion components, was separated using a Butterworth low-pass filter into 
body acceleration and gravity. The gravitational force is assumed to have only low frequency components,
therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain.

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

This dataset is converted into tidydata.txt which has merged data from training and test and extracts only the measurements on the mean and standard deviation for each measurement. Alongwith, with meaningful column names, it is more descriptive and gives an good coverage of information. 

##**Tidy Data**

###**Variables**

The Tidy Data contains each record as a row. It has included mean and standard deviation for each of the following features as variables. ( Note: X Y Z represents the 3 dimensional axis and each dimension is used as a seperate variable ) . It also has the activity of experiment as its first column. Altogether tidy data has 67 variables and 10299 observations. 

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

###**How the tidydata.txt is created**

*Please refer run_analysis.R for step-by-step code instructions*

-  Given dataset had training and test set in seperated files. Even among them, the activity listing was in a different file and the feature listing is in different. Firstly, all activities are added next to the features i.e x_train and y_train are merged giving complete training set. Same did with test set. Both resulting training and test data are then merged into one.
-  From features.txt file, features pertaining to mean() and std() are extracted. From the data set, we filter in the features which matched to the extracted one.
-  Meaningful column names are given the data.
-  The activity column which has 6 level of activites listed as numeric are transformed to show the activity name instead.
-  Consequent data is saved in tidydata.txt

*Please refer run_analysis.R for step-by-step code instructions*
