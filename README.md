#How run_analysis.R creates tidy_averages.txt


##Overview

This program is intended to work with the Human Activity Recognition Using Smartphones Data Set from the UCI machine learning respository. It assumes that the uncompressed data folder is in the same director it is in. For each combination of subject and activity, it produces averages for the means and standard deviations of measurements in the data set.

##Details of script contents

The script start with a utility function, remove_leading, which uses gsub to remove the leading digits from the descriptions in the datasets text files such as features.txt. For example, it turns "1 tBodyAcc-mean()-X" into "tBodyAcc-mean()-X".

The script reads in the measurements for both the training and test sets and combines them into a single data frame (with training data first). Then, we read the names of the measurements from features.txt and assign them as column names to the measurement data. Since we only are interested in the standard deviations and means of the measurements, we then filter the columns using a regular expression which will match either 'mean' or 'std' followed by parentheses. Although there are other measures which use means such as "angle(X,gravityMean)" but do not have parentheses after 'mean', they are not included since they appear to be calculated using a mean and do not represent the mean value for a feature.

The files containing the subjects and activites are then read into data frames. Each set of training and test data is combined in the same order with training files coming first. Both of these data frames are transformed into factors to facilitate grouping later. The levels of the subjects factor are ordered to make the eventual grouping ordered by subject. The numbered activity values in the y_test/train.txt files are also replaced by the corresponding names given in the activity_labels.txt file. 

The three idividual data frames with subjects, activities and means and standard deviations of measures are then combined into a single data frame which is used to calculate the average values.

Using dplyr, the data is grouped by the combination of subjects and activites. This results in 180 groups (30 subjects x 6 activities). Using the summarise_each function, the average for each measurement for each of the 180 groups is calculated. The measurement columns are renamed by prefixing 'Avg-' to the original column names to indicate that they now hold the averages of these values. 

Finally the table containing the average values for each subject/activity group is written to tidy_averages.txt.


