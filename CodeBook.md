# Overview

The data used to create the the tidy_activities data set was obtained from this link:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Detailed information about the "raw" data used as input for the tidy\_activities data set is available in the features\_info.txt from the link above, and is not repeated here.  This CodeBook contains a description of the variable naming convention, and a complete listing of all variables is available at the end of this CodeBook.  See the README file for information on how the "raw" data was processed to create this tidy\_activities data set.

# Variable Naming Convention

The first two columns of the data set, used to group the data, are:

* "activity"" is the activity performed by the subject, it is one of "LAYING", "SITTING", "STANDING", "WALKING", "WALKING\_DOWNSTAIRS", or "WALKING\_UPSTAIRS"  
* "subject"" is an integer between 1 and 30 assigned to each person in the study

The remaining column variable names can be decomposed into substrings to determine what the variable measures:

* "t" or "f" for time or frequency measurement.  Time measurements are assumed to be in units of seconds and frequency measurements are assumed to be in units of Hz.
* "BodyAcc", "GravityAcc", "BodyAccJerk", "BodyGyro", "BodyGyroJerk", or "BodyBodyGyroJerk" to indicate the major type of measurement being made.
* "-mean()-" or "-std()" to indicate whether this is a mean or standard deviation.  Note the the tidy data set contains the mean of available measurements (i.e. mean of means or mean of stds), as described in the README file.
* "X", "Y", "Z", to indicate the axis of measurement, or or "Mag" to indicate it is the vector magnitude of the X/Y/Z components

# Complete Variable Listing

* activity
* subject
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()
