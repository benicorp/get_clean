#Code Book for tidy_averages.txt"

The data contained in this file are the averages of the means and standard deviations calculated for each of the signal measures for each of combination of subject and activity in the Human Activity Recognition Using Smartphones Data Set from the UCI machine learning respository. 

The first column, "Subject" contains the subject number for an observation which can range from 1 to 30. The second column, "Activity", contains the activity the subject was performing, one of: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. The subsequent columns (3 to 68) contain the average of the means and standard deviations for each of the signal measure for which the mean and standard deviation was calculated in the orignal data set for a particular combination of subject and activity. 

The names used for the signal measures in the original data sets are prefixed by 'Avg-' to indicate that they are the averages of the orignal measurements. The naming conventions used in the original dataset are maintained and can be parsed as they could in the original data set to see which signal measurement was averaged. For example, Avg-fBodyAcc-std()-Z contains the average of the standard deviation of the frequncy of body acceleration on the Z axis. Please see features_info.txt which is available with the original dataset for more information on the signal measurements and parsing their names.

The full list of averaged variables in this data set is in order:

Avg-tBodyAcc-mean()-X

Avg-tBodyAcc-mean()-Y

Avg-tBodyAcc-mean()-Z

Avg-tBodyAcc-std()-X

Avg-tBodyAcc-std()-Y

Avg-tBodyAcc-std()-Z

Avg-tGravityAcc-mean()-X

Avg-tGravityAcc-mean()-Y

Avg-tGravityAcc-mean()-Z

Avg-tGravityAcc-std()-X

Avg-tGravityAcc-std()-Y

Avg-tGravityAcc-std()-Z

Avg-tBodyAccJerk-mean()-X

Avg-tBodyAccJerk-mean()-Y

Avg-tBodyAccJerk-mean()-Z

Avg-tBodyAccJerk-std()-X

Avg-tBodyAccJerk-std()-Y

Avg-tBodyAccJerk-std()-Z

Avg-tBodyGyro-mean()-X

Avg-tBodyGyro-mean()-Y

Avg-tBodyGyro-mean()-Z

Avg-tBodyGyro-std()-X

Avg-tBodyGyro-std()-Y

Avg-tBodyGyro-std()-Z

Avg-tBodyGyroJerk-mean()-X

Avg-tBodyGyroJerk-mean()-Y

Avg-tBodyGyroJerk-mean()-Z

Avg-tBodyGyroJerk-std()-X

Avg-tBodyGyroJerk-std()-Y

Avg-tBodyGyroJerk-std()-Z

Avg-tBodyAccMag-mean()

Avg-tBodyAccMag-std()

Avg-tGravityAccMag-mean()

Avg-tGravityAccMag-std()

Avg-tBodyAccJerkMag-mean()

Avg-tBodyAccJerkMag-std()

Avg-tBodyGyroMag-mean()

Avg-tBodyGyroMag-std()

Avg-tBodyGyroJerkMag-mean()

Avg-tBodyGyroJerkMag-std()

Avg-fBodyAcc-mean()-X

Avg-fBodyAcc-mean()-Y

Avg-fBodyAcc-mean()-Z

Avg-fBodyAcc-std()-X

Avg-fBodyAcc-std()-Y

Avg-fBodyAcc-std()-Z

Avg-fBodyAccJerk-mean()-X

Avg-fBodyAccJerk-mean()-Y

Avg-fBodyAccJerk-mean()-Z

Avg-fBodyAccJerk-std()-X

Avg-fBodyAccJerk-std()-Y

Avg-fBodyAccJerk-std()-Z

Avg-fBodyGyro-mean()-X

Avg-fBodyGyro-mean()-Y

Avg-fBodyGyro-mean()-Z

Avg-fBodyGyro-std()-X

Avg-fBodyGyro-std()-Y

Avg-fBodyGyro-std()-Z

Avg-fBodyAccMag-mean()

Avg-fBodyAccMag-std()

Avg-fBodyBodyAccJerkMag-mean()

Avg-fBodyBodyAccJerkMag-std()

Avg-fBodyBodyGyroMag-mean()

Avg-fBodyBodyGyroMag-std()

Avg-fBodyBodyGyroJerkMag-mean()

Avg-fBodyBodyGyroJerkMag-std()