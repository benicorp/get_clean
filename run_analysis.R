library(dplyr)
#A utility function which uses gsub to remove the digits found 
#at the start of the lines in the description files
remove_leading <- function(digitString) {
    gsub("\\d* ", "", digitString)
}
#Read measurement data and combine into one data frame
train_raw <- read.table("./UCI HAR Dataset/train/X_train.txt")
test_raw <- read.table("./UCI HAR Dataset/test/X_test.txt")
combined_raw <- rbind(train_raw, test_raw)
#Read the features file to find the names of the measures and
#assign them to the columns
col_names <- remove_leading(
    readLines("./UCI HAR Dataset/features.txt"))
names(combined_raw) <- col_names
#Find the columns which we need by grepping for mean or std follow by
#parentheses and then filter the measure columns based on that.
needed_columns <- grepl("(mean|std)\\(\\)", col_names)
filtered_measures <- combined_raw[,needed_columns]
#Read in and merge the files listing the subjects,
#converting them to numeric values and then 
#to factors with levels in increasing order
#Also give the column a descriptive name
train_subjects <- as.data.frame(
    factor(
    as.numeric(
    readLines("./UCI HAR Dataset/train/subject_train.txt")),
    levels = 1:30, ordered=T))
names(train_subjects) <- c("Subject")
test_subjects <- as.data.frame(
    factor(
    as.numeric(
    readLines("./UCI HAR Dataset/test/subject_test.txt")),
    levels = 1:30, ordered=T))
names(test_subjects) <- c("Subject")
subjects <- rbind(train_subjects, test_subjects)
#Read in and merge the activity numbers; name the column
train_activities <- as.data.frame(
    as.numeric(
        readLines("./UCI HAR Dataset/train/y_train.txt")))
names(train_activities) <- c("Activity")
test_activities <- as.data.frame(
    as.numeric(
        readLines("./UCI HAR Dataset/test/y_test.txt")))
names(test_activities) <- c("Activity")
#Read activity names and then use them to change the values in 
#the activity column from numbers to descriptive names.
activities <- rbind(train_activities, test_activities)
activity_names <- remove_leading(
    readLines("./UCI HAR Dataset/activity_labels.txt"))
activities[,1] <- as.factor(activity_names[activities[,1]])
#Combine the subjects, activities and measures 
#into a single data frame
combined <- cbind(subjects, activities, filtered_measures)
#Caclulcate the averages for each measure per subject and activity:
#First group by subject and activity and then calculate the averages
#for the remaining column for each combination.
tidy_averages <- combined %>% 
    group_by(Subject, Activity) %>% 
    summarise_each(funs(mean))
#Change the names for the columns after the first 2 to indicate
#that they now hold the average value of the measure.
names(tidy_averages) <- c(names(tidy_averages)[1:2],
                          paste("Avg-",
                                names(tidy_averages)[3:68],
                                sep=''))
#Write output file
write.table(tidy_averages, "./tidy_averages.txt", row.name=F)